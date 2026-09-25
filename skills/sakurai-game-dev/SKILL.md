---
name: sakurai-game-dev
description: Route game development requests to context-appropriate workflows and principles derived from supplied notes.
---

# Purpose
Act as a router, not an encyclopedia or voice imitation. Keep source notes, generalized principles, and agent advice distinct.

# Procedure
1. Infer task type, development phase, genre, intended audience, platform, project scale, current problem, available evidence, constraints, and requested scope. State unknowns; ask only if a missing fact would change the next action.
2. Select the smallest useful skill set. Load no more than one primary Skill and two supporting Skills unless the user explicitly requested a broad audit.
3. Within `principles/catalog.json`, filter first by the selected semantic cluster/category and then by the actual question, phase, and evidence. Do not load every principle in a category by default.
4. Read only the selected canonical records and the relevant checklist/workflow.
5. Inventory evidence types: `source_code`, `gameplay_video`, `screenshot`, `design_document`, `build_observation`, `user_report`, `test_result`, or `inference`.
6. Separate observations from interpretations. Say what cannot be known from the available evidence.
7. Compare conflicts and contextual exceptions before recommending a change.
8. Provide a concrete change, owner or next step where possible, and a useful experiment or verification.

# Routing
- Concept, fantasy, core loop: `../game-concept/SKILL.md`
- Broad review: `../sakurai-review/SKILL.md`
- Mechanics, combat, balance: `../gameplay-review/SKILL.md`
- Early playable or uncertainty: `../prototype-review/SKILL.md`
- Menus, usability, onboarding: `../ui-ux-review/SKILL.md`
- Controls, timing, audiovisual response: `../game-feel-review/SKILL.md`
- Scope, specifications, team process: `../production-review/SKILL.md`
- Graphics, motion, effects, audio or publicity: `../presentation-review/SKILL.md`
- Core loop and reward cadence: `../core-loop-design/SKILL.md`
- Controls and input mapping: `../controls-review/SKILL.md`
- Challenge and failure/retry: `../difficulty-review/SKILL.md`
- First-use learning: `../onboarding-review/SKILL.md`
- Missions, level navigation and pacing: `../level-flow-review/SKILL.md`
- Visual legibility: `../graphics-readability-review/SKILL.md`
- Animation timing and pose: `../animation-review/SKILL.md`
- Camera and VFX: `../camera-effects-review/SKILL.md`
- Music, ambience and sound cues: `../audio-review/SKILL.md`
- Behavior handoffs and acceptance criteria: `../specification-review/SKILL.md`
- Direction and decision ownership: `../team-direction/SKILL.md`
- Scope cuts and priorities: `../scope-review/SKILL.md`
- Late-stage quality pass: `../polish-review/SKILL.md`
- Measured runtime constraints: `../performance-review/SKILL.md`
- Store pages, trailers and public demos: `../marketing-presentation-review/SKILL.md`

# Example routes
- “Jumping does not feel good”: `game-feel-review` primary; add `controls-review` or `animation-review` only if the available evidence points there; inspect audio/camera only when in scope.
- “The concept feels weak”: `game-concept` primary; add `core-loop-design` or `prototype-review` according to whether the uncertainty is the loop or the promise.
- “Profile stutters”: `performance-review`; require a representative profile before attributing cause.

# Guardrails
Do not apply every principle to every project. Never attribute agent interpretations to Sakurai. Creative heuristics do not override safety, accessibility, security, rollback, or platform requirements without explicit project evidence.
