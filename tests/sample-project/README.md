# Sample project fixture: Starstep

This fictional fixture demonstrates review behavior. It is not evidence about a shipped game.

## Game design
- Audience: children and adults new to platform games, mobile touch first.
- Promise: a short, cheerful platforming challenge that can be understood quickly.
- Loop: see a gap, jump, collect a star, reach a checkpoint, continue.
- Phase: first playable.
- Constraint: one developer; touch and gamepad support planned.

## Controller pseudocode
```text
on_jump_pressed:
  if grounded: velocity_y = jump_impulse
  else: ignore_input
on_restart:
  reload_level()
```
This code alone does not establish game feel or actual retry duration.

## UI specification
- Tutorial is a full-screen paragraph shown before the first level.
- Continue requires tapping a small button at the lower right.
- The tutorial cannot be skipped or reopened later.
- No evidence is supplied for accessibility settings or alternate input.

## Fictional playtest notes
- One new player tapped jump while still airborne and expected it to work after landing.
- Two of three players missed the small continue button.
- One player read the tutorial, then forgot the jump explanation before the first gap.
- Sample size is tiny; treat each as a lead for another test, not a population estimate.
