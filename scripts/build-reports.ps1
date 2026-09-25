$ErrorActionPreference='Stop'
$root=Split-Path -Parent $PSScriptRoot
$reports=Join-Path $root 'reports';New-Item -ItemType Directory -Force $reports|Out-Null
$c=Get-Content (Join-Path $root 'principles/catalog.json') -Raw|ConvertFrom-Json
$candidates=@($c.records|Where-Object {$_.candidate_id})
$statuses=@{canonical=0;merged=0;child=0;context_variant=0;workflow_only=0;checklist_only=0;agent_interpretation_only=0;duplicate=0;rejected=0;unresolved=0}
foreach($r in $candidates){$statuses[$r.status]++}
$cats=$candidates|Group-Object {$_.source_provenance.categories[0]}|Sort-Object Name
$l=[System.Collections.Generic.List[string]]::new();$l.Add('# Candidate coverage');$l.Add('');$l.Add("Structured candidate IDs: $($candidates.Count). Earlier 129 was an undercount caused by an incomplete ID pattern; the raw source audit found more structured candidate records.")
$l.Add('');$l.Add('## Disposition totals');foreach($s in $statuses.Keys){$l.Add("- $($s): $($statuses[$s])")}
$l.Add('');$l.Add('## By source category');$l.Add('| Category | Candidates | Canonical | Unresolved |');$l.Add('|---|---:|---:|---:|')
foreach($g in $cats){$l.Add("| $($g.Name) | $($g.Count) | $(@($g.Group|Where-Object status -eq canonical).Count) | $(@($g.Group|Where-Object status -eq unresolved).Count) |")}
$l.Add('');$l.Add('Candidate dispositions include source ID, category, title, status, canonical target, reason, preserved/discarded fields, fidelity ratings, and notes in sources/candidate-mapping.yaml.')
Set-Content (Join-Path $reports 'candidate-coverage.md') $l -Encoding utf8
$l=[System.Collections.Generic.List[string]]::new();$l.Add('# Source fidelity audit');$l.Add('');$l.Add('All supplied source files are AI Studio intermediate notes, not original video transcripts. Fields called explicit/source in those notes remain secondary summaries and are not quote-verified. Extraction separates SOURCE, GENERALIZED, and AGENT content in principles/catalog.json.')
$l.Add('');$l.Add('## Representative transformations')
foreach($id in @('SKILL-A01-PLAYER-FIRST','SKILL-A11-NO-PLAN-B','SKILL-PLAN-025','UI-002','FX-009-FLASHING-CONTRAST-BALANCING','TECH-DEBUG-008')){
 $r=$candidates|Where-Object candidate_id -eq $id|Select-Object -First 1
 if($r){$l.Add("### $id — $($r.title)");$l.Add('');$l.Add("- SOURCE summary field: $($r.source_claim)");$l.Add("- GENERALIZED field: $($r.generalized_principle)");$l.Add("- AGENT field: $($r.agent_interpretation)");$l.Add("- Treatment: retained at $($r.source_provenance.source_files[0]); thresholds and engineering interpretations are not promoted to verified source wording.");$l.Add('')}
}
$l.Add('## Full-candidate risk scan');$l.Add('');$l.Add('A token scan was run over SOURCE/GENERALIZED/AGENT extracts for every candidate. These are review flags, not automatic findings about the original video.')
foreach($kind in @('source_absolute_terms','generalized_absolute_terms','agent_absolute_terms','source_numeric_thresholds','generalized_numeric_thresholds','agent_numeric_thresholds','technical_or_causal_terms_in_generalized_or_agent')){$flagged=@($candidates|Where-Object {@($_.fidelity_audit.$kind).Count -gt 0});$l.Add("- $kind flagged: $($flagged.Count) / $($candidates.Count)");if($flagged.Count){$l.Add('  Candidate IDs: '+(($flagged|Select-Object -ExpandProperty candidate_id -First 30)-join ', '))}}
$lowSource=@($candidates|Where-Object {$_.confidence.source_fidelity -eq 'low'});$l.Add("- Explicit/source field absent in supplied notes: $($lowSource.Count) / $($candidates.Count); these use an unverified-source placeholder and retain the raw source link.")
$l.Add('## Audit limits');$l.Add('');$l.Add('- Structured fields in AI Studio notes are preserved and layer-labeled, but source fidelity cannot be independently established without checking original videos.');$l.Add('- Some candidate records lack explicit-source fields; these are marked low confidence and point to the raw source instead of fabricating a quote.');$l.Add('- Exact URLs and episode timestamps are absent or incomplete in the supplied material.')
Set-Content (Join-Path $reports 'source-fidelity.md') $l -Encoding utf8
$routes=@{
 'player-centered-design'=@('game-concept','ui-ux-review','onboarding-review','production-review')
 'game-essence'=@('game-concept','gameplay-review','core-loop-design')
 'motivation-and-reward'=@('core-loop-design','gameplay-review','level-flow-review')
 'risk-and-choice'=@('gameplay-review','difficulty-review')
 'controls-and-response'=@('controls-review','game-feel-review')
 'feedback-and-game-feel'=@('game-feel-review','gameplay-review','audio-review','camera-effects-review')
 'clarity-and-readability'=@('graphics-readability-review','ui-ux-review','camera-effects-review')
 'onboarding-and-learning'=@('onboarding-review','ui-ux-review','controls-review')
 'difficulty-and-accessibility'=@('difficulty-review','ui-ux-review','onboarding-review')
 'pacing-and-time'=@('level-flow-review','onboarding-review','ui-ux-review')
 'concept-and-direction'=@('game-concept','team-direction')
 'prototype-and-iteration'=@('prototype-review','polish-review','game-concept')
 'specification-and-communication'=@('specification-review','production-review')
 'scope-and-prioritization'=@('scope-review','production-review')
 'team-and-decision-making'=@('team-direction','production-review')
 'production-management'=@('production-review','scope-review')
 'graphics-and-visual-design'=@('graphics-readability-review','presentation-review','polish-review')
 'animation-and-motion'=@('animation-review','game-feel-review')
 'camera-and-effects'=@('camera-effects-review','presentation-review','game-feel-review')
 'audio-and-music'=@('audio-review','game-feel-review','presentation-review')
 'technical-implementation'=@('specification-review','production-review')
 'performance-and-optimization'=@('performance-review')
 'quality-and-polish'=@('polish-review','production-review')
 'marketing-and-presentation'=@('marketing-presentation-review','presentation-review')
 'creator-workflow'=@('production-review','team-direction','game-concept')
}
$skills=Get-ChildItem (Join-Path $root 'skills') -Directory|Select-Object -ExpandProperty Name
$l=[System.Collections.Generic.List[string]]::new();$l.Add('# Knowledge coverage');$l.Add('');$l.Add('Raw category is retained for provenance; semantic cluster chooses candidate principles and routes to focused task Skills.')
$l.Add('');$l.Add('| Source category | Candidates | Semantic clusters | Skills | Operational resources |');$l.Add('|---|---:|---|---|---|')
foreach($g in $cats){$clusters=@($g.Group|Select-Object -ExpandProperty semantic_cluster -Unique);$ss=@();foreach($cl in $clusters){$ss+=@($routes[$cl])};$ss=@($ss|Sort-Object -Unique);$l.Add("| $($g.Name) | $($g.Count) | $($clusters -join ', ') | $($ss -join ', ') | workflows, phase/domain checklists, task review |")}
$l.Add('');$l.Add("Raw documents retained and indexed: 14. Structured candidates: $($candidates.Count). Cross-cutting synthesis records: $($c.canonical_count-$candidates.Count). The repository instruction brief is preserved separately and is not treated as source knowledge.")
Set-Content (Join-Path $reports 'knowledge-coverage.md') $l -Encoding utf8
$principles=@()
foreach($f in Get-ChildItem (Join-Path $root 'principles') -Recurse -Filter '*.md'){$t=Get-Content $f.FullName -Raw;if($t -match '(?m)^id:\s*([a-z0-9-]+)\s*$'){$id=$Matches[1];if($t -match '(?m)^semantic_cluster:\s*([a-z0-9_-]+)\s*$'){$cl=$Matches[1]}else{$cl='general'};$principles+=@([pscustomobject]@{id=$id;cluster=$cl;file=$f.FullName.Substring($root.Length+1).Replace('\','/')})}}
$l=[System.Collections.Generic.List[string]]::new();$l.Add('# Skill-principle matrix');$l.Add('');$l.Add('● indicates a routed semantic-cluster relationship; Skills select matching records by task, phase, and evidence rather than loading a whole cluster.')
$l.Add('');$l.Add('| Principle | Cluster | Record | '+($skills -join ' | ')+' |');$sep='|---|---|---|'+('---|' * $skills.Count);$l.Add($sep)
foreach($p in $principles){$mapped=@($routes[$p.cluster]);if($p.cluster -eq 'general'){$mapped=@('sakurai-review','sakurai-game-dev')};$marks=@();foreach($s in $skills){if($mapped -contains $s){$marks+='●'}else{$marks+=''}};$l.Add("| $($p.id) | $($p.cluster) | $($p.file) | "+($marks -join ' | ')+' |')}
Set-Content (Join-Path $reports 'skill-principle-matrix.md') $l -Encoding utf8
Write-Output "Generated coverage reports for $($candidates.Count) candidates, $($principles.Count) canonical files, and $($skills.Count) Skills."
