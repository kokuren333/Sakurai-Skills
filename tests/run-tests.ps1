$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$catalog = Get-Content (Join-Path $root 'principles/catalog.json') -Raw | ConvertFrom-Json
$e2e = Get-Content (Join-Path $PSScriptRoot 'e2e-cases.json') -Raw | ConvertFrom-Json
$regression = Get-Content (Join-Path $PSScriptRoot 'regression-cases.json') -Raw | ConvertFrom-Json
$errors = [System.Collections.Generic.List[string]]::new()
if ($e2e.cases.Count -ne 6) { $errors.Add('Expected six context E2E cases') }
foreach ($case in $e2e.cases) {
    foreach ($skill in $case.skills) {
        if (-not (Test-Path (Join-Path $root "skills/$skill/SKILL.md"))) { $errors.Add("Missing routed Skill: $skill") }
    }
    if (-not $case.expected_focus -or -not $case.must_not_assume) { $errors.Add("Incomplete context fixture: $($case.id)") }
}
if (@($e2e.cases.expected_focus | Select-Object -Unique).Count -ne 6) { $errors.Add('Context fixtures do not produce distinct focus expectations') }
foreach ($case in $regression.cases) {
    if (-not ($catalog.records.id -contains $case.principle)) { $errors.Add("Unknown regression principle: $($case.principle)") }
    $expectedApplies = switch ($case.id) {
        'plan-b-is-not-disaster-recovery' { $case.context -match 'creative pitch' }
        'speed-changes-by-phase' { $case.context -match 'concept prototype' }
        'director-does-not-override-accessibility' { $case.context -match 'creative direction' }
        default { $null }
    }
    if ($null -eq $expectedApplies -or [bool]$expectedApplies -ne [bool]$case.applies) { $errors.Add("Context applicability regression failed: $($case.id) / $($case.context)") }
}
if ($regression.cases.Count -ne 6) { $errors.Add('Expected six regression fixtures') }
foreach ($group in ($regression.cases | Group-Object id)) {
    if ($group.Count -ne 2 -or @($group.Group.applies | Select-Object -Unique).Count -ne 2) { $errors.Add("Regression pair does not change by context: $($group.Name)") }
}
$review = Get-Content (Join-Path $PSScriptRoot 'sample-project/dry-run-review.md') -Raw
foreach ($required in @('Evidence available','Routed Skills','Findings','Strengths','Uncertain findings','Next actions')) {
    if ($review -notmatch [regex]::Escape($required)) { $errors.Add("Dry run missing section: $required") }
}
if ($review -notmatch 'No playable build' -or $review -notmatch 'cannot establish feel') { $errors.Add('Dry run overstates evidence') }
if ($errors.Count) { $errors | ForEach-Object { Write-Error $_ }; exit 1 }
Write-Output "E2E fixtures passed: $($e2e.cases.Count) context cases, $($regression.cases.Count) regression cases, sample-project dry-run evidence discipline."
