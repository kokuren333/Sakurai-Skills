$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$raw = Join-Path $root 'sources/raw'
function Q([string]$x) { ConvertTo-Json -InputObject ([string]$x) -Compress }
function F([string[]]$ls,[string]$key) {
  for($i=0;$i -lt $ls.Count;$i++) {
    if($ls[$i] -match '^(\s*)'+[regex]::Escape($key)+':\s*(.*)$') {
      $indent=$Matches[1].Length; $v=$Matches[2].Trim()
      if($v -match '^[|>][+-]?$') {
        $parts=[System.Collections.Generic.List[string]]::new()
        for($j=$i+1;$j -lt $ls.Count;$j++) {
          if($ls[$j].Trim() -and $ls[$j] -match '^(\s*)\S' -and $Matches[1].Length -le $indent){break}
          if($ls[$j].Trim()){$parts.Add($ls[$j].Trim())}
        }
        return ($parts -join ' ')
      }
      if($v -match '^["''](.*)["'']$'){return $Matches[1]}
      if($v -and $v -notin @('|','>','null')){return $v}
    }
  }
  return ''
}
function L([string[]]$ls,[string]$key) {
  for($i=0;$i -lt $ls.Count;$i++) {
    if($ls[$i] -match '^(\s*)'+[regex]::Escape($key)+':\s*(.*)$') {
      $indent=$Matches[1].Length; $v=$Matches[2].Trim()
      if($v.StartsWith('[')) { return @([regex]::Matches($v,'"([^"]*)"|''([^'']*)''') | ForEach-Object { if($_.Groups[1].Success){$_.Groups[1].Value}else{$_.Groups[2].Value} }) }
      $out=[System.Collections.Generic.List[string]]::new()
      for($j=$i+1;$j -lt $ls.Count;$j++) {
        if($ls[$j].Trim() -and $ls[$j] -match '^(\s*)\S' -and $Matches[1].Length -le $indent){break}
        if($ls[$j] -match '^\s+-\s*["'']?(.*?)["'']?\s*$' -and $Matches[1]){$out.Add($Matches[1])}
      }
      return @($out)
    }
  }
  return @()
}
function Semantic([string]$category,[string]$id,[string]$title) {
 if($id -eq 'SKILL-A01-PLAYER-FIRST' -or $id -eq 'SKILL-A03-PLAYER-PERSPECTIVE-DEFENSE'){return 'player-centered-design'}
 if($id -match '^SKILL-A(08|12|17)-'){return 'concept-and-direction'}
 if($id -match '^SKILL-A(04|05)-'){return 'specification-and-communication'}
 if($id -match '^SKILL-A(11)-'){return 'scope-and-prioritization'}
 if($id -match '^SKILL-A(13|15|20|22|23)-'){return 'team-and-decision-making'}
 if($id -match '^SKILL-A(06|07)-'){return 'quality-and-polish'}
 if($id -match '^SKILL-A(09|10|14|21)-'){return 'creator-workflow'}
 if($id -match '^SKILL-A(02|19|16)-'){return 'marketing-and-presentation'}
 if($title -match '初心者|チュートリアル|導入|手加減'){return 'onboarding-and-learning'}
 if($title -match 'カメラ|3D酔い|映像不一致|振動'){return 'camera-and-effects'}
 if($title -match 'クエスト|探索|オムニバス|疲労|長時間|ムービー|スキップ'){return 'pacing-and-time'}
 if($title -match '報酬|賞賛|見返り|ごほうび|観戦|共感尺度|スコア'){return 'motivation-and-reward'}
 if($title -match '仕様|ドキュメント|企画書|パラメータ|階層アウトライン|標準的操作'){return 'specification-and-communication'}
 if($title -match 'コンセプト|市場|続編|シリーズ|差別化|独自魅力|集大成'){return 'concept-and-direction'}
 if($title -match '入力|操作|ボタン|ジャンプ|加速度|コントロール'){return 'controls-and-response'}
 if($title -match '色覚|アクセシビリティ|即死回避|安全設計'){return 'difficulty-and-accessibility'}
 if($title -match '視認|コントラスト|レイアウト|視覚|可視化'){return 'clarity-and-readability'}
 if($title -match '手応え|フィードバック|反応|ヒット|効果音'){return 'feedback-and-game-feel'}
 if($id -match '^GAMEPLAY_.*RISK|RISK_AND_RETURN|reverse_risk'){return 'risk-and-choice'}
 if($id -match 'STRESS|REWARD|ATTRACTION'){return 'motivation-and-reward'}
 if($id -match 'BALANCE|DIFFICULTY|ACCESSIBILITY|FAILSAFE'){return 'difficulty-and-accessibility'}
 if($id -match 'LOOP|PROGRESSION|LEVEL|QUEST'){return 'game-essence'}
 if($id -match 'RAPID_RETRY|PACING|FATIGUE|OMNIBUS|SKIP|TIME'){return 'pacing-and-time'}
 if($id -match '^SKILL-PLAN-(002|007|025)|onboarding|tutorial|初心者|導入'){return 'onboarding-and-learning'}
 if($id -match '^SKILL-PLAN-(003|008|014|020)|reward|賞賛|報酬|ごほうび'){return 'motivation-and-reward'}
 if($id -match '^SKILL-PLAN-(004|018|022)|UI-|VIS-|UI'){return 'clarity-and-readability'}
 if($id -match '^SKILL-PLAN-(006|011)|level|quest|mission'){return 'pacing-and-time'}
 if($id -match '^SKILL-PLAN-(013|015)|spec|presentation'){return 'specification-and-communication'}
 if($id -match '^SKILL-PLAN-(016|019)|concept|series|コンセプト|独自'){return 'concept-and-direction'}
 if($id -match '^SKILL-PLAN-(001|005|009|017|021|023)|input|control|操作|入力|ジャンプ'){return 'controls-and-response'}
 if($id -match '^SKILL-PLAN-(010|024)|scenario|story|シナリオ|ムービー'){return 'pacing-and-time'}
 if($category -eq 'D'){if($title -match 'ジャンプ|入力|ボタン|操作|加速度'){return 'controls-and-response'};if($title -match 'ヒット|振動|手応え|反応|感情'){return 'feedback-and-game-feel'};return 'specification-and-communication'}
 if($category -eq 'E'){if($title -match '監修|進行|管理|チケット|品質|デバッグ'){return 'production-management'};return 'team-and-decision-making'}
 if($category -eq 'F'){if($title -match '視認|コントラスト|判定|画面|視覚'){return 'clarity-and-readability'};return 'graphics-and-visual-design'}
 if($category -eq 'G'){return 'animation-and-motion'}
 if($category -eq 'H'){if($title -match 'カメラ|振動|点滅|遮蔽'){return 'camera-and-effects'};return 'feedback-and-game-feel'}
 if($category -eq 'I'){return 'audio-and-music'}
 if($category -eq 'J'){if($title -match 'スキップ|時間|テキスト|チュートリアル|導入'){return 'onboarding-and-learning'};return 'clarity-and-readability'}
 if($category -eq 'K'){if($title -match '負荷|最適化|パーティクル|描画|処理'){return 'performance-and-optimization'};if($title -match '仕様|ドキュメント|パラメータ|命名'){return 'specification-and-communication'};return 'technical-implementation'}
 if($category -eq 'L'){return 'marketing-and-presentation'}
 if($category -eq 'CONCEPT'){if($title -match '初心者|導入|安全'){return 'onboarding-and-learning'};if($title -match 'カメラ'){return 'camera-and-effects'};if($title -match '疲労|長時間|分割'){return 'pacing-and-time'};if($title -match '操作|コンボ|攻撃|リスク'){return 'risk-and-choice'};if($title -match '報酬|評価'){return 'motivation-and-reward'};if($title -match '市場|企画|コンセプト|集大成|シリーズ'){return 'concept-and-direction'};return 'game-essence'}
 return 'creator-workflow'
}
$meta=@{'A-work-attitude.md'=@('A','creator_workflow');'B-game-essence.md'=@('B','gameplay');'C-planning-design.md'=@('C','game_design');'D-specification.md'=@('D','specification');'E-team-management.md'=@('E','team');'F-graphics.md'=@('F','graphics');'G-motion.md'=@('G','animation');'H-effects.md'=@('H','effects');'I-sound.md'=@('I','audio');'J-ui.md'=@('J','ui');'K-programming-technical.md'=@('K','technical');'L-publicity.md'=@('L','marketing');'planning-concepts.md'=@('CONCEPT','game_design')}
$relationMap=@{
 'SKILL-A06-HIGH-HEAT-DRAFTING'=@{conflicts_with=@('SKILL-A07-WORK-PERSISTS-LABOR-FADES')}
 'SKILL-A07-WORK-PERSISTS-LABOR-FADES'=@{conflicts_with=@('SKILL-A06-HIGH-HEAT-DRAFTING')}
 'SKILL-A11-NO-PLAN-B'=@{conflicts_with=@('SKILL-A04-AGILE-SPEC-ADAPTATION')}
 'SKILL-A04-AGILE-SPEC-ADAPTATION'=@{conflicts_with=@('SKILL-A11-NO-PLAN-B')}
 'SKILL-A08-DIRECTOR-INDIVIDUALITY'=@{conflicts_with=@('SKILL-A13-BROAD-INPUT-OUTPUT')}
 'SKILL-A13-BROAD-INPUT-OUTPUT'=@{conflicts_with=@('SKILL-A08-DIRECTOR-INDIVIDUALITY','SKILL-A15-AVOID-POINTLESS-VOTING')}
 'SKILL-A15-AVOID-POINTLESS-VOTING'=@{conflicts_with=@('SKILL-A13-BROAD-INPUT-OUTPUT')}
 'SKILL-PLAN-002'=@{supports=@('SKILL-PLAN-007')}
 'SKILL-PLAN-007'=@{supports=@('SKILL-PLAN-002')}
 'GAMEPLAY_CORE_001_RISK_AND_RETURN'=@{supports=@('concept_reverse_risk_into_propulsion')}
 'concept_reverse_risk_into_propulsion'=@{supports=@('GAMEPLAY_CORE_001_RISK_AND_RETURN')}
}
$all=[System.Collections.Generic.List[object]]::new()
foreach($file in (Get-ChildItem $raw -Filter '*.md'|Where-Object Name -ne '00-repository-completion-brief.md'|Sort-Object Name)){
 $text=Get-Content -Raw $file.FullName; $matches=[regex]::Matches($text,'(?m)^\s*-\s*id:\s*["'']([^"'']+)["'']')
 for($i=0;$i -lt $matches.Count;$i++){
  $m=$matches[$i];$end=if($i+1 -lt $matches.Count){$matches[$i+1].Index}else{$text.Length};$block=$text.Substring($m.Index,$end-$m.Index);$ls=$block -split '\r?\n'
  $id=$m.Groups[1].Value.Trim();$title=F $ls 'title';if(!$title){throw "No title: $id"}
  $short=F $ls 'one_sentence_rule';$explicit=F $ls 'explicit_content';if(!$explicit){$explicit=F $ls 'explicit_statement'};if(!$explicit){$explicit=F $ls 'explicit_statements'};if(!$explicit){$explicit=F $ls 'source_explicit'};if(!$explicit){$explicit=F $ls 'level_a_explicit'};if(!$explicit){$explicit=F $ls 'a_explicit'};if(!$explicit){$explicit=F $ls 'explicit'}
  $general=F $ls 'generalized_principle';if(!$general){$general=F $ls 'generalized_principles'};if(!$general){$general=F $ls 'generalized'};if(!$general){$general=F $ls 'level_b_generalization'};if(!$general){$general=F $ls 'generalized_principles'}
  $agent=F $ls 'engineer_notes';if(!$agent){$agent=F $ls 'knowledge_engineer_notes'};if(!$agent){$agent=F $ls 'level_c_interpretation'};if(!$agent){$agent=F $ls 'c_interpretation'};if(!$agent){$agent=F $ls 'supplement_interpretation'};if(!$agent){$agent=F $ls 'agent_conversion'}
  $questions=L $ls 'agent_questions';if(!$questions.Count){$questions=L $ls 'questions'}
  $actions=L $ls 'agent_actions';if(!$actions.Count){$actions=L $ls 'recommended_actions'}
  $antipatterns=L $ls 'anti_patterns';$examples=L $ls 'examples'
  $fidelityFlags=[ordered]@{source_absolute_terms=@();generalized_absolute_terms=@();agent_absolute_terms=@();source_numeric_thresholds=@();generalized_numeric_thresholds=@();agent_numeric_thresholds=@();technical_or_causal_terms_in_generalized_or_agent=@();manual_video_verification_required=$true}
  $absolutePattern='必ず|絶対|一切|唯一|常に|完全に|厳守|never|always|must';$numberPattern='\d+(?:\.\d+)?\s*(?:秒|分|時間|%|％|件|個|回|フレーム|F|fps|BPM|MB|GB)'
  $fidelityFlags.source_absolute_terms=@([regex]::Matches($explicit,$absolutePattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.generalized_absolute_terms=@([regex]::Matches($general,$absolutePattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.agent_absolute_terms=@([regex]::Matches($agent,$absolutePattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.source_numeric_thresholds=@([regex]::Matches($explicit,$numberPattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.generalized_numeric_thresholds=@([regex]::Matches($general,$numberPattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.agent_numeric_thresholds=@([regex]::Matches($agent,$numberPattern)|ForEach-Object Value|Sort-Object -Unique)
  $fidelityFlags.technical_or_causal_terms_in_generalized_or_agent=@([regex]::Matches($general+' '+$agent,'心理|脳|認知|ユーザビリティ|オーバードロー|PBR|UX|ROI|因果|物理法則|サンプルレート')|ForEach-Object Value|Sort-Object -Unique)
  $slug=($id.ToLowerInvariant() -replace '[^a-z0-9]+','-').Trim('-');$category=$meta[$file.Name][0];$cluster=Semantic $category $id $title
  $rels=$relationMap[$id];if(!$rels){$rels=@{}};$related=[ordered]@{parent=@();children=@();supports=@();conflicts_with=@();overlaps_with=@();prerequisite_for=@()}
  foreach($kind in @('parent','children','supports','conflicts_with','overlaps_with','prerequisite_for')){if($rels.ContainsKey($kind)){$related[$kind]=@($rels[$kind]|ForEach-Object{($_.ToLowerInvariant() -replace '[^a-z0-9]+','-').Trim('-')})}}
  $all.Add([ordered]@{
   id=$slug;title=$title;candidate_id=$id;source_provenance=[ordered]@{candidates=@($id);source_files=@("raw/$($file.Name)");categories=@($category)}
   source_claim=$(if($explicit){$explicit}else{"No explicit claim field extracted; consult raw source. Exact attribution is unverified."})
   generalized_principle=$(if($general){$general}elseif($short){$short}else{$title})
   agent_interpretation=$(if($agent){$agent}else{'Apply as a contextual review heuristic, not an absolute rule.'})
   summary=$(if($short){$short}else{$title});why_it_matters=(F $ls 'why_it_matters');semantic_cluster=$cluster
   domains=(L $ls 'applicable_domains');development_phases=(L $ls 'applicable_phases');applies_when=@("Relevant $cluster decision is in scope.")
   does_not_apply_when=@('Project context, audience, phase, or constraints make application counterproductive.')
   triggers=@((F $ls 'agent_trigger'));questions=$questions;actions=$actions;review_criteria=(L $ls 'agent_review_criteria');anti_patterns=$antipatterns;tradeoffs=@((F $ls 'tradeoffs'));exceptions=@((F $ls 'exceptions'));examples=$examples
   related=$related
   confidence=[ordered]@{source_fidelity=$(if($explicit){'medium'}else{'low'});generalization=$(if($general){'medium'}else{'low'});agent_extension=$(if($agent){'medium'}else{'low'})};fidelity_audit=$fidelityFlags
   status='canonical';canonical_file=$null
  })
 }
}
$dups=@($all|Group-Object { $_.candidate_id }|Where-Object Count -gt 1);if($dups.Count){throw 'Duplicate candidate IDs.'}
$slugDups=@($all|Group-Object { $_.id }|Where-Object Count -gt 1);if($slugDups.Count){throw 'Canonical slug collision.'}
foreach($c in $all){$c.canonical_file="principles/derived/$($c.id).md"}
$mapping=[System.Collections.Generic.List[string]]::new();$mapping.Add('version: 1');$mapping.Add("candidate_count: $($all.Count)");$mapping.Add('candidates:')
$idx=[System.Collections.Generic.List[string]]::new();$idx.Add('version: 1');$idx.Add("candidate_count: $($all.Count)");$idx.Add('note: Complete list of structured source candidate IDs.');$idx.Add('candidates:')
foreach($c in $all){
 $mapping.Add("  - candidate_id: $(Q $c.candidate_id)");$mapping.Add("    source_file: $(Q $c.source_provenance.source_files[0])");$mapping.Add("    source_category: $(Q $c.source_provenance.categories[0])");$mapping.Add("    original_title: $(Q $c.title)");$mapping.Add('    status: canonical');$mapping.Add("    canonical_principles: [$(Q $c.id)]");$mapping.Add("    relationship: {type: canonicalized_as, target: $(Q $c.id)}");$mapping.Add("    reason: $(Q 'Retained as a separately addressable source candidate; raw wording and specificity remain available in provenance.')");$mapping.Add("    preserved_information: [$(Q $c.title), $(Q 'Full structured candidate content remains in the linked raw source.')]");$mapping.Add('    discarded_information: []');$mapping.Add("    source_fidelity: {explicit_source: $($c.confidence.source_fidelity), generalization_strength: $($c.confidence.generalization), agent_extension_strength: $($c.confidence.agent_extension)}");$mapping.Add("    notes: $(Q 'Intermediate AI Studio note; confirm exact quotation and timestamp against original video.')")
 $idx.Add("  - id: $(Q $c.candidate_id)");$idx.Add("    source_file: $(Q $c.source_provenance.source_files[0])");$idx.Add("    source_category: $(Q $c.source_provenance.categories[0])");$idx.Add("    original_title: $(Q $c.title)");$idx.Add("    canonical_status: canonical");$idx.Add("    canonical_principles: [$(Q $c.id)]")
}
Set-Content (Join-Path $root 'sources/candidate-mapping.yaml') $mapping -Encoding utf8
Set-Content (Join-Path $root 'sources/candidate-index.yaml') $idx -Encoding utf8
$derived=[System.Collections.Generic.List[string]]::new()
foreach($c in $all){
 $derived.Add("  - id: $($c.id)`n    title: $(Q $c.title)`n    file: principles/derived/$($c.id).md`n    candidate_id: $(Q $c.candidate_id)`n    semantic_cluster: $($c.semantic_cluster)")
 $body=[System.Collections.Generic.List[string]]::new();$body.AddRange([string[]]@('---',"id: $($c.id)","title: $(Q $c.title)","candidate_id: $(Q $c.candidate_id)","source_file: $(Q ('../../sources/raw/'+$c.source_provenance.source_files[0].Substring(4)))","semantic_cluster: $($c.semantic_cluster)",'---','',"# $($c.title)",'','## Summary',$c.summary,'','## SOURCE',$c.source_claim,'','## GENERALIZED',$c.generalized_principle,'','## AGENT',$c.agent_interpretation,'','## Why it matters',$c.why_it_matters,'','## Use with context',"- Domains: $($c.domains -join ', ')","- Phases: $($c.development_phases -join ', ')","- Trigger: $($c.triggers -join ' ')",'','## Agent questions'))
 foreach($q in $c.questions){$body.Add("- $q")};$body.Add('');$body.Add('## Suggested actions');foreach($a in $c.actions){$body.Add("- $a")};$body.Add('');$body.Add('## Review criteria');foreach($r in $c.review_criteria){$body.Add("- $r")};$body.Add('');$body.Add('## Anti-patterns');foreach($a in $c.anti_patterns){$body.Add("- $a")};$body.Add('');$body.Add('## Tradeoffs and exceptions');foreach($t in $c.tradeoffs){$body.Add("- Tradeoff: $t")};foreach($e in $c.exceptions){$body.Add("- Exception: $e")};$body.Add('');$body.Add('## Provenance boundary');$body.Add('SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.')
 Set-Content (Join-Path $root $c.canonical_file) $body -Encoding utf8
}
$metaSourceMap=@{
 'player-first'=@('player-centered-design','SKILL-A01-PLAYER-FIRST')
 'protect-player-from-dev-constraints'=@('player-centered-design','SKILL-A03-PLAYER-PERSPECTIVE-DEFENSE')
 'preserve-core-concept'=@('concept-and-direction','SKILL-A17-UNWAVERING-CORE-CONCEPT')
 'rapid-prototyping'=@('prototype-and-iteration','')
 'player-agency-and-tradeoffs'=@('risk-and-choice','GAMEPLAY_CORE_001_RISK_AND_RETURN')
 'reduce-unnecessary-friction'=@('player-centered-design','UI-002')
 'communicate-through-feedback'=@('feedback-and-game-feel','SPEC-001')
 'readability-before-decoration'=@('clarity-and-readability','SKILL-GFX-002')
 'prototype-before-polish'=@('prototype-and-iteration','')
 'specify-for-shared-understanding'=@('specification-and-communication','TECH-DOC-003')
 'make-work-visible'=@('team-and-decision-making','TM-001')
 'test-with-representative-players'=@('prototype-and-iteration','GAMEPLAY_TESTING_014_DEVELOPER_BIAS_HANDICAP')
 'design-for-context'=@('creator-workflow','')
 'scope-and-cut-deliberately'=@('scope-and-prioritization','TM-010')
 'make-onboarding-legible'=@('onboarding-and-learning','SKILL-PLAN-007')
 'coordinate-audio-visual-priority'=@('audio-and-music','SOUND-002')
 'promote-the-real-product'=@('marketing-and-presentation','PR-002')
}
$metaRecords=[System.Collections.Generic.List[object]]::new()
foreach($f in (Get-ChildItem (Join-Path $root 'principles') -File -Filter '*.md' | Sort-Object Name)) {
 $tx=Get-Content $f.FullName -Raw
 if($tx -notmatch '(?m)^id:\s*([a-z0-9-]+)\s*$'){continue};$mid=$Matches[1]
 if($tx -notmatch '(?m)^title:\s*(.+)$'){continue};$mtitle=$Matches[1].Trim().Trim('"')
 $srcfile=F ($tx -split '\r?\n') 'source_file';$category=if($srcfile -match '^([A-L])-'){$Matches[1]}elseif($srcfile -eq 'planning-concepts.md'){'CONCEPT'}else{'AGENT'}
 $sourcePath=if(Test-Path (Join-Path $root "sources/raw/$srcfile")){"raw/$srcfile"}else{'raw/00-repository-completion-brief.md'}
 $summary=[regex]::Match($tx,'(?ms)^## Summary\s*\r?\n(.*?)(?=\r?\n## )').Groups[1].Value.Trim()
 $sourceClaim=[regex]::Match($tx,'(?ms)^## SOURCE\s*\r?\n(.*?)(?=\r?\n## )').Groups[1].Value.Trim()
 $generalized=[regex]::Match($tx,'(?ms)^## GENERALIZED\s*\r?\n(.*?)(?=\r?\n## )').Groups[1].Value.Trim()
 $agentText=[regex]::Match($tx,'(?ms)^## AGENT\s*\r?\n(.*?)(?=\r?\n## )').Groups[1].Value.Trim()
 $pair=$metaSourceMap[$mid];$support=@();if($pair.Count -gt 1 -and $pair[1]){$support=@($pair[1])}
 $metaRecords.Add([ordered]@{id=$mid;title=$mtitle;source_provenance=[ordered]@{candidates=$support;source_files=@($sourcePath);categories=@($category)};source_claim=$sourceClaim;generalized_principle=$generalized;agent_interpretation=$agentText;summary=$summary;why_it_matters=$summary;semantic_cluster=$pair[0];domains=@();development_phases=@();applies_when=@('Use when the question crosses multiple source candidates or requires a high-level synthesis.');does_not_apply_when=@('Do not use this umbrella as a substitute for a more specific principle.');triggers=@();questions=@('Which more specific candidate records apply?');actions=@('Select task-relevant candidate records and consider their tradeoffs.');review_criteria=@('The finding cites specific evidence and specific candidate records.');anti_patterns=@();tradeoffs=@();exceptions=@('Use a narrower candidate when the decision is localized.');examples=@();related=[ordered]@{parent=@();children=@();supports=@();conflicts_with=@();overlaps_with=@();prerequisite_for=@()};confidence=[ordered]@{source_fidelity='low';generalization='medium';agent_extension='medium'};fidelity_audit=[ordered]@{source_absolute_terms=@();generalized_absolute_terms=@();agent_absolute_terms=@();source_numeric_thresholds=@();generalized_numeric_thresholds=@();agent_numeric_thresholds=@();technical_or_causal_terms_in_generalized_or_agent=@();manual_video_verification_required=$true};status='canonical';canonical_file="principles/$($f.Name)"})
}
$completeRecords=@($all)+@($metaRecords)
[ordered]@{version=1;candidate_count=$all.Count;canonical_count=$completeRecords.Count;records=$completeRecords}|ConvertTo-Json -Depth 12|Set-Content (Join-Path $root 'principles/catalog.json') -Encoding utf8
$indexLines=[System.Collections.Generic.List[string]]::new();$indexLines.Add('version: 1');$indexLines.Add('records:')
foreach($f in (Get-ChildItem (Join-Path $root 'principles') -Recurse -Filter '*.md' | Sort-Object FullName)) {
 $front=Get-Content -LiteralPath $f.FullName -Raw
 if($front -match '(?m)^id:\s*([a-z0-9-]+)\s*$') {
  $principleId=$Matches[1];if($front -match '(?m)^title:\s*(.+)$'){$ptitle=$Matches[1]}else{$ptitle='Untitled'}
  $rel=$f.FullName.Substring($root.Length+1).Replace('\','/')
  $indexLines.Add("  - id: $principleId`n    title: $ptitle`n    file: $rel")
 }
}
Set-Content (Join-Path $root 'principles/index.yaml') $indexLines -Encoding utf8
$graph=[System.Collections.Generic.List[string]]::new();$graph.Add('version: 1');$graph.Add('nodes:')
$nodeIds=[System.Collections.Generic.HashSet[string]]::new([StringComparer]::OrdinalIgnoreCase)
foreach($f in (Get-ChildItem (Join-Path $root 'principles') -Recurse -Filter '*.md')) {
 $front=Get-Content -Raw $f.FullName
 if($front -match '(?m)^id:\s*([a-z0-9-]+)\s*$') { $nid=$Matches[1];if($nodeIds.Add($nid)){if($front -match '(?m)^title:\s*(.+)$'){$ntitle=$Matches[1]}else{$ntitle=$nid};$graph.Add("  - id: $nid`n    title: $ntitle`n    file: $($f.FullName.Substring($root.Length+1).Replace('\','/'))") } }
}
$graph.Add('edges:')
$edgePairs=@(
 @('player-first','skill-a01-player-first','parent_of'),
 @('protect-player-from-dev-constraints','skill-a03-player-perspective-defense','parent_of'),
 @('preserve-core-concept','skill-a17-unwavering-core-concept','parent_of'),
 @('player-agency-and-tradeoffs','gameplay-core-001-risk-and-return','parent_of'),
 @('reduce-unnecessary-friction','ui-002','parent_of'),
 @('communicate-through-feedback','spec-001','parent_of'),
 @('make-work-visible','tm-001','parent_of'),
 @('promote-the-real-product','pr-002','parent_of'),
 @('skill-a06-high-heat-drafting','skill-a07-work-persists-labor-fades','conflicts_with'),
 @('skill-a11-no-plan-b','skill-a04-agile-spec-adaptation','conflicts_with'),
 @('skill-a08-director-individuality','skill-a13-broad-input-output','conflicts_with'),
 @('skill-a15-avoid-pointless-voting','skill-a13-broad-input-output','conflicts_with'),
 @('skill-plan-002','skill-plan-007','complements'),
 @('skill-plan-025','concept-dual-layer-skill-expression','complements'),
 @('gameplay-core-001-risk-and-return','concept-reverse-risk-into-propulsion','supports'),
 @('concept-reverse-risk-into-propulsion','gameplay-core-001-risk-and-return','supports')
)
foreach($e in $edgePairs){$graph.Add("  - from: $($e[0])`n    to: $($e[1])`n    type: $($e[2])")}
$graph.Add('clusters:')
foreach($g in ($all|Where-Object { $_['semantic_cluster'] }|Group-Object { $_['semantic_cluster'] }|Sort-Object Name)){$members=@($g.Group|ForEach-Object { $_['id'] });$graph.Add("  - id: $($g.Name)`n    members: [$(($members|ForEach-Object{Q $_}) -join ', ')]")}
$graph.Add('tensions:')
$tensionData=@(
 @('creative-speed-and-finished-quality','skill-a06-high-heat-drafting','skill-a07-work-persists-labor-fades','Both rapid first-draft momentum and lasting product quality matter at different stages.','Early exploration where delay reduces learning or idea freshness.','Late production and release work where defects reach players.','Use speed to produce a testable draft, then schedule evidence-led refinement.','Rough work ships without validation or finish.','Polish consumes time before the core idea is tested.'),
 @('decisive-plan-and-adaptive-specification','skill-a11-no-plan-b','skill-a04-agile-spec-adaptation','A clear committed direction can coexist with revising a failing design.','Selecting and communicating a creative direction.','New evidence or constraints invalidate the current specification.','Keep one active product direction while allowing explicit change decisions.','Premature hedging weakens focus.','Commitment becomes refusal to learn.'),
 @('director-authorship-and-broad-input','skill-a08-director-individuality','skill-a13-broad-input-output','Distinctive direction benefits from outside information and challenge.','Choosing a coherent creative point of view and making the accountable call.','Exploration, specialist review, accessibility, safety, or platform compliance.','Gather diverse input, then let the accountable owner resolve the creative choice.','Direction collapses into an averaged consensus.','Authorship dismisses useful evidence or required needs.'),
 @('fast-onboarding-and-sufficient-teaching','skill-plan-002','skill-plan-007','Quickly reaching play can conflict with enough guided practice.','First minutes where immediate interaction demonstrates the premise.','A novel or high-consequence mechanic needs supported practice.','Teach in context while keeping optional replay and reference.','Players are delayed by unnecessary explanation.','Players are dropped into opaque rules without support.')
)
foreach($t in $tensionData){$graph.Add("  - tension_id: $($t[0])`n    principles: [$($t[1]), $($t[2])]`n    why_tension_exists: $(Q $t[3])`n    prefer_a_when: [$(Q $t[4])]`n    prefer_b_when: [$(Q $t[5])]`n    combine_when: [$(Q $t[6])]`n    failure_mode_if_a_overapplied: $(Q $t[7])`n    failure_mode_if_b_overapplied: $(Q $t[8])")}
Set-Content (Join-Path $root 'rules/principle-graph.yaml') $graph -Encoding utf8
Write-Output "Dispositioned $($all.Count) structured candidate IDs."

