# Repository contribution rules

## Source and candidate pipeline

1. Preserve the 14 files in `sources/raw/` byte-for-byte; never edit AI Studio input in place.
2. Treat the repository completion brief in raw sources as a preserved instruction artifact, not as evidence about Sakurai.
3. Candidate IDs are source identifiers. Canonical IDs are lower-case slugs; Skill and lint IDs use their own namespaces.
4. After changing structured knowledge inputs, run `scripts/build-candidate-catalog.ps1` to regenerate candidate inventory, dispositions, catalog, readable canonical records, index, and graph.
5. Review the generated output. The generator is mechanical and its field extraction is not a substitute for human/source-fidelity review.
6. Each candidate must have one valid disposition, source path, title, rationale, and canonical destination or explicit workflow/checklist destination. Never hide missing records by editing the reported total.
7. Keep SOURCE, GENERALIZED, and AGENT separate. AI Studio fields called explicit/source are still unverified secondary notes.
8. Flag source statements with unsupported numeric thresholds, absolutes, causal claims, psychology/management terminology, or examples generalized beyond their context. Keep source wording attributed to the supplied note and move agent-authored prescriptions to AGENT.

## Principles and graph

9. Preserve distinct player-facing decisions when merging. Exact/near duplicates should be linked or merged with the candidate mapping updated; record what information is retained.
10. Update the semantic graph, tension resolution, source/category mapping, and Skills whenever principles change.
11. Every graph edge, lint reference, anti-pattern reference, and Skill reference must resolve.
12. Use context to resolve conflicts. Creative heuristics never replace safety, accessibility, security, backup, rollback, legal, or platform requirements.

## Skills and evidence

13. Skills are concrete workflows, not one-per-video or one-per-principle summaries.
14. Keep routing selective. Load only principles relevant to task, phase, genre, audience, constraints, and evidence.
15. Every finding must state evidence type and distinguish observation from inference. Code alone cannot prove game feel, visual clarity, or audio quality.
16. Include strengths, tradeoffs, exceptions, uncertain findings, concrete next actions, and useful experiments where relevant.
17. Maintain context regression fixtures and the fictional sample-project dry run when changing routing or review behavior.

## Generated reports and validation

18. Run `scripts/build-reports.ps1` after catalog/routing changes.
19. Run `tests/run-tests.ps1` and `scripts/validate.ps1` before committing.
20. Do not claim full JSON Schema/YAML validation unless the selected validator actually parses and validates those formats; current checks cover JSON syntax, required catalog contracts, mapping coverage, and repository references.
21. Update README counts from current generated outputs; do not hard-code a number without checking the candidate index and catalog.
