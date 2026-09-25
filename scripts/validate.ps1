$ErrorActionPreference='Stop'
$root=Split-Path -Parent $PSScriptRoot
$errors=[System.Collections.Generic.List[string]]::new()
function Fail([string]$m){$script:errors.Add($m)}
$canonicalSchema=Get-Content (Join-Path $root 'schemas/canonical-principle.schema.json') -Raw|ConvertFrom-Json
$required=@($canonicalSchema.properties.records.items.required)
$catPath=Join-Path $root 'principles/catalog.json'
try{$cat=Get-Content $catPath -Raw|ConvertFrom-Json}catch{Fail "Cannot parse canonical catalog JSON: $_"}
$catalogIds=@{}
foreach($r in $cat.records){
 if($catalogIds.ContainsKey($r.id)){Fail "Duplicate canonical ID: $($r.id)"}else{$catalogIds[$r.id]=$true}
 foreach($k in $required){if($r.PSObject.Properties.Name -notcontains $k){Fail "Catalog record $($r.id) missing $k"}}
 if($r.status -ne 'canonical'){Fail "Unexpected candidate disposition: $($r.candidate_id) => $($r.status)"}
 if(-not (Test-Path (Join-Path $root $r.canonical_file))){Fail "Missing canonical file: $($r.canonical_file)"}
 foreach($sf in $r.source_provenance.source_files){if(-not(Test-Path (Join-Path $root ('sources/'+$sf)))){Fail "Missing candidate source: $sf"}}
 $md=Get-Content (Join-Path $root $r.canonical_file) -Raw
 foreach($layer in @('SOURCE','GENERALIZED','AGENT')){$pattern='(?m)^## '+[regex]::Escape($layer)+'\r?$';if($md -notmatch $pattern){Fail "Missing $layer layer in $($r.id)"}}
}
$candidateRecords=@($cat.records|Where-Object {$_.candidate_id})
if($cat.candidate_count -ne $candidateRecords.Count){Fail 'Candidate catalog count mismatch'}
if($cat.canonical_count -ne $cat.records.Count){Fail 'Canonical catalog count mismatch'}
$mapPath=Join-Path $root 'sources/candidate-mapping.yaml';$map=Get-Content $mapPath -Raw
$mappedIds=@([regex]::Matches($map,'(?m)^  - candidate_id: "([^"]+)"')|ForEach-Object{$_.Groups[1].Value})
if($mappedIds.Count -ne $candidateRecords.Count){Fail 'Candidate mapping and catalog count mismatch'}
if(@($mappedIds|Sort-Object -Unique).Count -ne $mappedIds.Count){Fail 'Duplicate candidate mapping ID'}
if($map -match '(?m)^    status: unresolved$'){Fail 'Unresolved candidate disposition exists'}
if([regex]::Matches($map,'(?m)^  - candidate_id:').Count -ne $mappedIds.Count){Fail 'Candidate mapping schema candidate_id count mismatch'}
foreach($field in @('source_file','source_category','original_title','status','canonical_principles','relationship','reason','preserved_information','discarded_information','source_fidelity','notes')){if([regex]::Matches($map,"(?m)^    $($field):").Count -ne $mappedIds.Count){Fail "Candidate mapping schema field count mismatch: $field"}}
if([regex]::Matches($map,'(?m)^    relationship:').Count -ne $mappedIds.Count -or [regex]::Matches($map,'(?m)^    source_fidelity:').Count -ne $mappedIds.Count){Fail 'Candidate mapping schema contract failure'}
foreach($r in $candidateRecords){if($mappedIds -notcontains $r.candidate_id){Fail "Unmapped candidate: $($r.candidate_id)"}}
$indexedCandidates=Get-Content (Join-Path $root 'sources/candidate-index.yaml') -Raw
$candidateIndexIds=@([regex]::Matches($indexedCandidates,'(?m)^  - id: "([^"]+)"')|ForEach-Object{$_.Groups[1].Value})
if($candidateIndexIds.Count -ne $candidateRecords.Count -or @($candidateIndexIds|Sort-Object -Unique).Count -ne $candidateIndexIds.Count){Fail 'Candidate index count or uniqueness mismatch'}
foreach($r in $candidateRecords){
 $needle='candidate_id: '+(ConvertTo-Json $r.candidate_id -Compress);$start=$map.IndexOf($needle)
 if($start -lt 0){Fail "Candidate map entry missing: $($r.candidate_id)";continue}
 $next=$map.IndexOf('  - candidate_id:',$start+$needle.Length);$end=if($next -lt 0){$map.Length}else{$next};$entry=$map.Substring($start,$end-$start)
 if($entry -notmatch ('canonical_principles: \['+[regex]::Escape((ConvertTo-Json $r.id -Compress))+'\]')){Fail "Candidate target mismatch: $($r.candidate_id)"}
 if($entry -notmatch [regex]::Escape('source_file: '+(ConvertTo-Json $r.source_provenance.source_files[0] -Compress))){Fail "Candidate source mapping mismatch: $($r.candidate_id)"}
}
$structuredCount=0;$structuredIds=@()
foreach($f in (Get-ChildItem (Join-Path $root 'sources/raw') -Filter '*.md'|Where-Object Name -ne '00-repository-completion-brief.md')){$txt=Get-Content $f.FullName -Raw;$found=[regex]::Matches($txt,'(?m)^\s*-\s*id:\s*["'']([^"'']+)["'']');$structuredCount+=$found.Count;foreach($m in $found){$structuredIds+=($m.Groups[1].Value.Trim())}}
if($structuredCount -ne $candidateRecords.Count){Fail "Structured source candidate count mismatch: $structuredCount vs $($candidateRecords.Count)"}
if(@($structuredIds|Sort-Object -Unique).Count -ne $structuredIds.Count){Fail 'Duplicate candidate IDs in raw sources'}
$srcFiles=Get-ChildItem (Join-Path $root 'sources/raw') -File
$srcIndex=Get-Content (Join-Path $root 'sources/index.yaml') -Raw
if($srcFiles.Count -ne 14){Fail "Expected 14 raw source files, found $($srcFiles.Count)"}
if([regex]::Matches($srcIndex,'(?m)^  - id: SRC-').Count -ne 14){Fail 'Source index count mismatch'}
foreach($f in $srcFiles){if($srcIndex -notmatch [regex]::Escape("raw/$($f.Name)")){Fail "Raw source not indexed: $($f.Name)"};$sha=(Get-FileHash $f.FullName -Algorithm SHA256).Hash.ToLower();if($srcIndex -notmatch [regex]::Escape("sha256: $sha")){Fail "Raw source hash does not match index: $($f.Name)"}}
$idx=Get-Content (Join-Path $root 'principles/index.yaml') -Raw
$indexIds=@([regex]::Matches($idx,'(?m)^  - id: ([a-z0-9-]+)$')|ForEach-Object{$_.Groups[1].Value})
if(@($indexIds|Sort-Object -Unique).Count -ne $indexIds.Count){Fail 'Duplicate principle IDs in index'}
if($indexIds.Count -ne $cat.canonical_count){Fail "Principle index count mismatch (expected $($cat.canonical_count), got $($indexIds.Count))"}
$skillDirs=Get-ChildItem (Join-Path $root 'skills') -Directory
$skillFiles=Get-ChildItem (Join-Path $root 'skills') -Recurse -Filter 'SKILL.md'
$router=Get-Content (Join-Path $root 'skills/sakurai-game-dev/SKILL.md') -Raw
foreach($s in $skillDirs){if($s.Name -ne 'sakurai-game-dev' -and $router -notmatch [regex]::Escape("../$($s.Name)/SKILL.md")){Fail "Unreferenced Skill in router: $($s.Name)"}}
foreach($s in $skillFiles){$st=Get-Content $s.FullName -Raw;if($st -notmatch '(?m)^name: [a-z0-9-]+\r?$'){Fail "Skill missing valid name: $($s.FullName)"};if($st -notmatch '(?m)^description: .+\r?$'){Fail "Skill missing description: $($s.FullName)"}}
$graph=Get-Content (Join-Path $root 'rules/principle-graph.yaml') -Raw
$nodeSection=($graph -split '(?m)^edges:\s*$')[0]
$graphNodes=@([regex]::Matches($nodeSection,'(?m)^  - id: ([a-z0-9-]+)$')|ForEach-Object{$_.Groups[1].Value})
if(@($graphNodes|Sort-Object -Unique).Count -ne $graphNodes.Count){Fail 'Duplicate graph nodes'}
foreach($id in $indexIds){if($graphNodes -notcontains $id){Fail "Principle absent from graph: $id"}}
$edges=[regex]::Matches($graph,'(?ms)^  - from: ([a-z0-9-]+)\s+to: ([a-z0-9-]+)\s+type: ([a-z_]+)')
$edgeTypes=@('parent_of','child_of','supports','conflicts_with','complements','prerequisite_for','context_variant_of','operationalizes')
foreach($e in $edges){if($graphNodes -notcontains $e.Groups[1].Value){Fail "Broken graph edge from $($e.Groups[1].Value)"};if($graphNodes -notcontains $e.Groups[2].Value){Fail "Broken graph edge to $($e.Groups[2].Value)"};if($edgeTypes -notcontains $e.Groups[3].Value){Fail "Invalid graph edge type $($e.Groups[3].Value)"}}
foreach($t in [regex]::Matches($graph,'(?m)^    members: \[([^\]]*)\]')){foreach($member in [regex]::Matches($t.Groups[1].Value,'[a-z0-9-]+')){if($graphNodes -notcontains $member.Value){Fail "Broken graph cluster member: $($member.Value)"}}}
foreach($t in [regex]::Matches($graph,'(?m)^    principles: \[([^\]]*)\]')){foreach($member in [regex]::Matches($t.Groups[1].Value,'[a-z0-9-]+')){if($graphNodes -notcontains $member.Value){Fail "Broken graph tension reference: $($member.Value)"}}}
$tensions=[regex]::Matches($graph,'(?m)^  - tension_id:')
foreach($tid in @('creative-speed-and-finished-quality','decisive-plan-and-adaptive-specification','director-authorship-and-broad-input','fast-onboarding-and-sufficient-teaching')){if($graph -notmatch [regex]::Escape($tid)){Fail "Missing tension resolution: $tid"}}
$lint=Get-Content (Join-Path $root 'rules/lint-rules.yaml') -Raw
$lintIds=[regex]::Matches($lint,'(?m)^  - id: ([A-Z0-9-]+)')|ForEach-Object{$_.Groups[1].Value}
if(@($lintIds|Sort-Object -Unique).Count -ne @($lintIds).Count){Fail 'Duplicate lint IDs'}
foreach($r in [regex]::Matches($lint,'(?m)^    principle: ([a-z0-9-]+)$')){if(-not $catalogIds.ContainsKey($r.Groups[1].Value) -and $indexIds -notcontains $r.Groups[1].Value){Fail "Invalid lint principle $($r.Groups[1].Value)"}}
$anti=Get-Content (Join-Path $root 'rules/anti-patterns.yaml') -Raw
$antiIds=[regex]::Matches($anti,'(?m)^  - id: ([a-z0-9-]+)')|ForEach-Object{$_.Groups[1].Value}
if(@($antiIds|Sort-Object -Unique).Count -ne @($antiIds).Count){Fail 'Duplicate anti-pattern IDs'}
foreach($r in [regex]::Matches($anti,'(?m)^    likely_principles: \[([^\]]*)\]')){foreach($principleRef in [regex]::Matches($r.Groups[1].Value,'[a-z0-9-]+')){if($indexIds -notcontains $principleRef.Value){Fail "Invalid anti-pattern principle $($principleRef.Value)"}}}
foreach($s in (Get-ChildItem (Join-Path $root 'schemas') -Filter '*.json')){try{$null=Get-Content $s.FullName -Raw|ConvertFrom-Json}catch{Fail "Invalid JSON schema syntax: $($s.Name)"}}
$lintSchema=Get-Content (Join-Path $root 'schemas/lint-rules.schema.json') -Raw|ConvertFrom-Json
foreach($field in $lintSchema.properties.rules.items.required){if($field -ne 'id' -and [regex]::Matches($lint,"(?m)^    $($field):").Count -ne $lintIds.Count){Fail "Lint schema contract field count mismatch: $field"}}
$antiSchema=Get-Content (Join-Path $root 'schemas/anti-patterns.schema.json') -Raw|ConvertFrom-Json
foreach($field in $antiSchema.properties.anti_patterns.items.required){if($field -ne 'id' -and [regex]::Matches($anti,"(?m)^    $($field):").Count -ne $antiIds.Count){Fail "Anti-pattern schema contract field count mismatch: $field"}}
$e2e=Get-Content (Join-Path $root 'tests/e2e-cases.json') -Raw|ConvertFrom-Json
$reg=Get-Content (Join-Path $root 'tests/regression-cases.json') -Raw|ConvertFrom-Json
$report=Get-Content (Join-Path $root 'reports/skill-principle-matrix.md') -Raw
foreach($id in $indexIds){if($report -notmatch [regex]::Escape("| $id |")){Fail "Principle missing from Skill coverage matrix: $id"}}
foreach($r in $candidateRecords){$row=$report -split "`r?`n" | Where-Object {$_ -like "| $($r.id) | $($r.semantic_cluster) |*"} | Select-Object -First 1;if(-not $row -or $row -notmatch '●'){Fail "Candidate principle has no routed Skill coverage: $($r.id)"}}
if($e2e.cases.Count -ne 6){Fail 'Expected 6 context E2E cases'}
if($reg.cases.Count -ne 6){Fail 'Expected 6 regression cases'}
if($skillDirs.Count -ne 24){Fail "Expected 24 routed Skills, found $($skillDirs.Count)"}
if((Get-ChildItem (Join-Path $root 'checklists') -File).Count -lt 15){Fail 'Phase/domain checklist coverage is incomplete'}
if((Get-ChildItem (Join-Path $root 'workflows') -File).Count -lt 7){Fail 'Workflow set is incomplete'}
if($tensions.Count -lt 4){Fail 'Expected at least four resolved context tensions'}
if($lintIds.Count -lt 13){Fail 'Lint heuristic set is incomplete'}
if($antiIds.Count -lt 8){Fail 'Anti-pattern catalog is incomplete'}
if($errors.Count){$errors|ForEach-Object{Write-Error $_};exit 1}
Write-Output "Validation passed."
Write-Output "Raw sources: $($srcFiles.Count) indexed; structured candidates: $($candidateRecords.Count) dispositioned; unresolved: 0."
Write-Output "Canonical principles: $($indexIds.Count) indexed; Skills: $($skillDirs.Count) routed; graph nodes: $($graphNodes.Count); graph edges: $($edges.Count)."
Write-Output "Lint rules: $($lintIds.Count); anti-patterns: $($antiIds.Count); tensions: $($tensions.Count); E2E cases: $($e2e.cases.Count); regression cases: $($reg.cases.Count)."
Write-Output "Workflows: $((Get-ChildItem (Join-Path $root 'workflows') -File).Count) documents; checklists: $((Get-ChildItem (Join-Path $root 'checklists') -File).Count) documents."
Write-Output 'Schema files parse as JSON; structural contracts and cross-references checked by this validator.'
