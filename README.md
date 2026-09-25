# Sakurai-Skills

**Language:** English | [日本語](README.ja.md)

Task-oriented agent Skills for game design, implementation planning, review, production, and presentation. The repository converts user-provided intermediate notes from Masahiro Sakurai's public game-development video series into a provenance-aware knowledge base and practical review workflows.

This project does not impersonate Sakurai or claim to speak on his behalf. Its reference material is Masahiro Sakurai's [YouTube channel](https://www.youtube.com/@sora_sakurai_jp), specifically all non-chat/"雑談" summary videos in the [summary-video playlist](https://www.youtube.com/playlist?list=PLi8SA3sbzYVQb8vloj23961McKcnihGVx). Gemini was asked to refer to those videos before the supplied structured notes were prepared for this repository.

The repository's supplied files are AI Studio structured notes, not verified transcripts or direct video captures. The README documents the full intended playlist scope; it does not claim that each note has been independently checked against its video. All SOURCE fields remain secondary summaries until verified against the original video.

## Philosophy and provenance layers

Every recommendation must keep three layers distinct:

- **SOURCE**: what the supplied intermediate note labels as explicit/source material. It is not quote-verified.
- **GENERALIZED**: a design abstraction carried by the note.
- **AGENT**: workflow guidance, technical application, or interpretation for an AI agent.

Use principles as contextual decision aids. Choose them based on player, genre, phase, platform, constraints, evidence, and requested scope. Preserve tensions rather than forcing one maxim to win in every situation.

## Candidate-to-principle pipeline

Fourteen original input files are preserved under `sources/raw/` and indexed with hashes in `sources/index.yaml`. The 13 knowledge documents contain **177 structured candidate IDs**. An earlier index showed 129 because its identifier pattern omitted several ID formats and three source categories; the index has been corrected from the raw files.

Every candidate has a disposition and canonical target in `sources/candidate-mapping.yaml`; detailed extracted records are in `principles/catalog.json`, and readable records are under `principles/derived/`. The mapping retains source IDs and titles, states what was kept/discarded, and records fidelity confidence. Seventeen cross-cutting principles remain as higher-level synthesis records. The index therefore contains 194 records in total. Coverage totals and category counts are in `reports/candidate-coverage.md`.

## Architecture

| Path | Purpose |
|---|---|
| `sources/raw/`, `sources/index.yaml` | Preserved inputs and provenance |
| `sources/candidate-index.yaml` | Candidate inventory |
| `sources/candidate-mapping.yaml` | Per-candidate disposition and mapping |
| `principles/catalog.json` | Machine-readable canonical records, layer-separated |
| `principles/` | Human-readable principle records and cross-cutting summaries |
| `rules/principle-graph.yaml` | Semantic clusters, typed links, and context-resolved tensions |
| `rules/lint-rules.yaml` | Review heuristics, never automatic verdicts |
| `rules/anti-patterns.yaml` | Symptoms, likely principles, false positives, and questions |
| `skills/` | 24 task-oriented agent Skills, including router and integrated review |
| `workflows/`, `checklists/` | Ordered development routines and phase/domain prompts |
| `schemas/`, `scripts/` | Data contracts, catalog/report generation, and validation |
| `tests/`, `reports/` | Context regression fixtures, sample project, and coverage/fidelity audits |

Raw video categories are provenance labels. Semantic clusters such as gameplay, UI, audio, team, and technical implementation route knowledge to the relevant task Skill.

## Skills

`sakurai-game-dev` is the router and `sakurai-review` is the integrated review. Domain Skills cover:

- concept and core-loop design
- gameplay, controls, difficulty, and level flow
- prototype and onboarding review
- UI/UX and game feel
- graphics readability, animation, camera/effects, and audio
- specification, production, team direction, and scope
- polish, performance, and marketing/presentation

See each directory's `SKILL.md` for use conditions, inputs, evidence limits, procedure, relevant knowledge, and output.

## Example use

1. Make the game repository and this repository available to the agent.
2. Start with `skills/sakurai-game-dev/SKILL.md` and state the review scope.
3. The router selects a small number of task Skills and matching catalog records.
4. For a whole-game pass, use `skills/sakurai-review/SKILL.md`.
5. Expect findings to name evidence, source layer, context, tradeoffs, strengths, and a useful verification or experiment.

Example: “Review the jump in this beginner mobile platformer. Inspect controller code and the supplied playtest notes; tell me what requires build verification.” The agent should not claim jump feel from code alone.

## Installation and agent integration

Copy `skills/` to the agent's configured Skills directory, or expose this repository as read-only project context. Keep `principles/catalog.json`, the graph, and source links reachable when using the Skills. The Markdown format is portable across Codex, Claude Code, Gemini CLI, and similar agents; exact discovery paths vary by host agent.

## Validation and contributing

Run `scripts/build-candidate-catalog.ps1` after changing structured raw sources, then `scripts/build-reports.ps1`, `tests/run-tests.ps1`, and `scripts/validate.ps1`. Do not hand-edit generated candidate records without updating their raw-source mapping and rerunning generation. When editing a Skill or canonical record, preserve provenance layers, update graph and coverage relationships, add regression evidence where behavior changes, and ensure the worktree and validation are clean.

## Limitations

- The channel and playlist are linked above, but per-claim video URLs, episode timestamps, and transcripts were not included with the supplied notes. Exact quotation and source fidelity require video-level verification.
- Some candidate fields are richer than others; missing explicit-source detail is marked low confidence rather than reconstructed as a quote.
- Context/E2E fixtures exercise router expectations and evidence discipline using fictional inputs. They do not test game behavior or prove the recommendations improve a commercial product.
- YAML cross-reference checks use repository-specific structural validation; the validator checks JSON schemas parse and catalog contract fields, but is not a full general-purpose JSON Schema/YAML engine.
