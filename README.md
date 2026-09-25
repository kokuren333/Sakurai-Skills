# Sakurai-Skills

**Language:** English | [日本語](README.ja.md)

Task-oriented agent Skills for game design, implementation planning, review, production, and presentation. The repository converts user-provided intermediate notes from Masahiro Sakurai's public game-development video series into a provenance-aware knowledge base and practical review workflows.

This project does not impersonate Sakurai or claim to speak on his behalf. Its reference material is Masahiro Sakurai's [YouTube channel](https://www.youtube.com/@sora_sakurai_jp), specifically all non-chat/"雑談" summary videos in the [summary-video playlist](https://www.youtube.com/playlist?list=PLi8SA3sbzYVQb8vloj23961McKcnihGVx). Gemini referred to those videos when preparing the structured notes used by this repository.

The repository contains AI Studio structured notes, not verified transcripts or direct video captures. Each SOURCE field is a secondary summary and has not been independently checked against its video.

## Philosophy and provenance layers

Every recommendation must keep three layers distinct:

- **SOURCE**: what the supplied intermediate note labels as explicit/source material. It is not quote-verified.
- **GENERALIZED**: a design abstraction carried by the note.
- **AGENT**: workflow guidance, technical application, or interpretation for an AI agent.

Use principles as contextual decision aids. Choose them based on player, genre, phase, platform, constraints, evidence, and requested scope. Preserve tensions rather than forcing one maxim to win in every situation.

## Candidate-to-principle pipeline

Fourteen source files are preserved under `sources/raw/` and indexed with hashes in `sources/index.yaml`. The 13 knowledge documents contain **177 structured candidate IDs**.

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

## Quick start

1. Make both the game project and this repository available to your agent. Keep this repository accessible so the Skills can open their linked principles and checklists.
2. Start the request with `skills/sakurai-game-dev/SKILL.md`. It routes a focused task to the relevant domain Skill and knowledge records.
3. For a broad whole-game review, ask the agent to use `skills/sakurai-review/SKILL.md`.
4. Tell the agent what to inspect and what it cannot access. Ask it to separate confirmed evidence from assumptions and items that need a build or playtest.

Include these details in your request when they matter:

- **Task:** the decision, feature, or problem to review.
- **Game context:** genre, target players, platform, and development phase.
- **Evidence:** relevant files, screenshots, playtest notes, or build access.
- **Constraints:** deadlines, team size, performance targets, accessibility needs, or scope.
- **Deliverable:** desired format and level of detail.

Copy and adapt this prompt:

> Use `skills/sakurai-game-dev/SKILL.md` to review **[feature or question]** in **[game/project]**. It is a **[genre]** for **[target players]** on **[platform]**, currently in **[development phase]**. Inspect **[files, build, screenshots, or playtest notes]**. The constraints are **[constraints]**. Return prioritized findings with evidence, context, tradeoffs, strengths, and a verification step for anything that cannot be confirmed from the supplied material.

Example: “Use the router Skill to review the jump in my beginner mobile platformer. Inspect the controller code and playtest notes. Identify likely issues, but mark anything about timing or feel that needs a build test.”

The Skills cover concept and core-loop design; gameplay, controls, difficulty, and level flow; prototype and onboarding; UI/UX and game feel; graphics readability, animation, camera/effects, and audio; specification, production, team direction, and scope; polish, performance, and marketing/presentation. Each Skill's `SKILL.md` explains when to use it, what evidence to gather, its review steps, and its output format.

To install for an agent, copy `skills/` into that agent's Skills directory, or make this repository available as read-only context. Keep the full repository available when possible: task Skills link to principles, checklists, workflows, and source notes. Discovery locations vary by agent; if automatic discovery is unavailable, ask the agent to read the router Skill path above explicitly.

## Validation and contributing

Run `scripts/build-candidate-catalog.ps1` after changing structured raw sources, then `scripts/build-reports.ps1`, `tests/run-tests.ps1`, and `scripts/validate.ps1`. Do not hand-edit generated candidate records without updating their raw-source mapping and rerunning generation. When editing a Skill or canonical record, preserve provenance layers, update graph and coverage relationships, add regression evidence where behavior changes, and ensure the worktree and validation are clean.

## Limitations

- The channel and playlist are linked above, but per-claim video URLs, episode timestamps, and transcripts were not included with the supplied notes. Exact quotation and source fidelity require video-level verification.
- Some candidate fields are richer than others; missing explicit-source detail is marked low confidence rather than reconstructed as a quote.
- Context/E2E fixtures exercise router expectations and evidence discipline using fictional inputs. They do not test game behavior or prove the recommendations improve a commercial product.
- YAML cross-reference checks use repository-specific structural validation; the validator checks JSON schemas parse and catalog contract fields, but is not a full general-purpose JSON Schema/YAML engine.
