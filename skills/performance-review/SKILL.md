---
name: performance-review
description: Review runtime constraints, content budgets, profiling evidence, and optimization tradeoffs.
---

# Use when
Frame-time, memory, load time, rendering, audio, or asset-budget concerns are reported.

# Procedure
1. Identify target hardware, build configuration, workload, and measured symptom.
2. Request or inspect profiler evidence before attributing cause.
3. Rank bottlenecks by player impact and measurement confidence.
4. Load only matching `technical`, `graphics`, `effects`, or `audio` candidates.
5. Propose one measurable change and re-profile representative scenes.

# Output
Measurement context, bottleneck evidence, proposed optimization, quality tradeoff, and before/after result.

# Guardrails
Do not recommend speculative micro-optimization or source-note numeric thresholds without measurement.
