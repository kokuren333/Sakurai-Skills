# Sakurai-Skills

A context-aware set of agent workflows for game development, derived from the 14 user-supplied intermediate knowledge files. It is intended for Codex, Claude Code, Gemini CLI, and other agents that can read Markdown.

This repository does **not** imitate or speak as Masahiro Sakurai. Inputs are structured secondary notes, not verified transcripts. Source claims, generalized design principles, and agent procedures are labeled separately; verify quotations and timestamps against the original public videos before citing them.

## Layers

- `sources/raw/`: byte-preserved inputs, including the user-provided completion brief.
- `sources/candidate-index.yaml`: extracted candidate IDs with an explicit unnormalized status.
- `principles/`: 18 cross-category operational syntheses with source links and caveats.
- `skills/`: task workflows with progressive disclosure.
- `workflows/`, `checklists/`, `rules/`: reusable development routines and heuristics.
- `schemas/`, `scripts/validate.ps1`, `tests/`: repository integrity and context examples.

The principles are an initial curated synthesis, not a one-to-one transcription of every candidate rule in the source material. The candidate index is an inventory aid, not a deduplication or coverage audit.

## Skills

| Skill | Use |
|---|---|
| `sakurai-game-dev` | Route a request to relevant task workflows |
| `sakurai-review` | Contextual whole-game or scoped review |
| `game-concept` | Concept and core-loop definition |
| `gameplay-review` | Mechanics, agency, readability, balance |
| `prototype-review` | Early prototype learning and next experiment |
| `ui-ux-review` | Interface friction, clarity, onboarding |
| `game-feel-review` | Controls, response, feedback, sensory coordination |
| `production-review` | Scope, specs, team coordination, risks |
| `presentation-review` | Graphics, motion, effects, audio, publicity |

## Use

Copy `skills/` into the agent's configured skills location, or keep this repository available as context and invoke the relevant `SKILL.md`. Start with `skills/sakurai-game-dev/SKILL.md`; it selects a narrow workflow and references relevant principles. These are decision aids, not automatic design mandates.

## Provenance and limits

See `sources/index.yaml` for filenames, sizes, and SHA-256 digests. Original pasted files are preserved in `sources/raw/`. The inputs are AI Studio-produced summaries and structured notes without source URLs, timestamps, or transcripts sufficient to verify exact wording. The canonical principle set is curated and not exhaustive: not every candidate ID has its own canonical record. Validation checks local references and structure, not source truth, schema conformance, or actual gameplay behavior. Review findings need build, design, and player evidence.
