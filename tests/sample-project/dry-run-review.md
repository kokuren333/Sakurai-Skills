# Dry-run review output

## Context
Fictional first playable, mobile-first beginner platformer. Review scope: jump/retry behavior and first-use UI.

## Evidence available
- Design brief and pseudocode: design-document/source-code evidence.
- UI spec: design-document evidence.
- Three fictional observations: user-report/test-note evidence with a very small sample.
- No playable build, video, screenshot, timing profile, or direct device observation was supplied.

## Routed Skills
- Primary: ui-ux-review and onboarding-review for the written tutorial path.
- Supporting: controls-review for the stated input acceptance rule; gameplay-review for gap/jump loop.
- Not loaded: performance, audio, and graphics because supplied evidence does not cover them.

## Findings
1. **Tutorial retrieval risk — moderate confidence.** Observation: instructions cannot be skipped or reopened; playtest note says a player forgot jump instructions before the first gap. Principle: make-onboarding-legible / skill-plan-007. Change: teach jump at a safe first gap and add an optional replay/help entry. Experiment: compare first-gap completion and requests for help with/without the opening paragraph.
2. **Continue control discoverability — low confidence.** Observation: two of three fictional participants missed the small lower-right action. Evidence is an undersized sample. Principle: reduce-unnecessary-friction. Change: increase affordance and align with expected navigation. Experiment: repeat task with new participants and record first action and completion.
3. **Airborne jump input — unverified design choice.** Observation: pseudocode ignores airborne presses. A player expected a buffered jump. Code/document evidence cannot establish feel. Principle: communicate-through-feedback and controls candidate records. Change: prototype optional short input buffering. Experiment: compare responsiveness and accidental double-jumps in a build.

## Strengths
- The central action and reward are stated in a compact loop.
- The project identifies an intended audience and platform early.

## Uncertain findings
The sample does not establish broad discoverability, control feel, actual retry cost, accessibility, or runtime performance.

## Next actions
1. Implement and compare contextual jump teaching.
2. Test the menu affordance with additional intended players.
3. Evaluate jump buffering in a playable build with an explicit acceptance rule.
