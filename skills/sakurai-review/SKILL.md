---
name: sakurai-review
description: Run a scoped, evidence-based game review by selecting relevant skills and principles.
---

# Purpose
Provide an integrated review for a game, build, design document, or requested subsystem.

# Inputs
Use available design/build, genre, target audience, phase, constraints, observed problem, and requested scope. State unavailable inputs as limitations.

# Procedure
1. **Context intake:** capture genre, intended audience, phase, platform, team/project scale, constraints, current concern, and scope.
2. **Evidence inventory:** list available documents, source code, gameplay video, screenshots, build observations, user reports, and test results. Mark inference explicitly.
3. **Scope definition:** state which systems are included and what is unavailable.
4. **Skill routing:** select task Skills using `sakurai-game-dev`; keep the set minimal for the requested scope.
5. **Principle selection:** filter `principles/catalog.json` by task, semantic cluster, phase, and evidence. Inspect exceptions and graph tensions.
6. **Review:** tie every finding to observed evidence or mark it as a hypothesis. Record strengths as well as issues.
7. **Tension resolution:** explain why principles pull in different directions and which context favors each.
8. **Prioritization:** rank by player impact, reach, confidence, cost, and reversibility. Severity labels are optional and require evidence.
9. **Experiment proposal:** give a smallest useful test or verification that can change the decision.
10. **Action list:** state bounded changes and next owners/actions when known.

# Output
## Context
## Evidence available
## High-impact findings
For each: Observation, Evidence type and reference, Relevant principle, Source layer, Why it matters, Countervailing principle, Tradeoff, Recommended change, Smallest experiment, Confidence.
## Conflicting principles
## Strengths already present
## Uncertain findings
## Next actions

# Severity
Use blocking/major/moderate/minor only when evidence supports the label. Explain impact and reach. Otherwise rank without severity labels.

# References
Load relevant records from `../../principles/index.yaml`; see `../../rules/principle-graph.yaml` for tensions.

# Evidence limits
Code inspection can identify plausible behavior risks but cannot prove how controls feel. Screenshots cannot establish timing or performance. When a needed evidence type is unavailable, state what build observation or test would resolve the finding.
