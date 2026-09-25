---
id: skill-mot-012
title: "二軸回転による有機的ねじれの付与"
candidate_id: "SKILL-MOT-012"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# 二軸回転による有機的ねじれの付与

## Summary
首や手首などの回転運動を単一の軸（1軸）だけで回さず、2軸以上を併用しタイミングをずらして有機的なねじれを表現せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
首や手首などの回転運動を単一の軸（1軸）だけで回さず、2軸以上を併用しタイミングをずらして有機的なねじれを表現せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
単軸回転による監視カメラやロボットのような不気味さ（不気味の谷・機械感）を排除し、キャラクターに自然な生命感と感情を宿らせるため。

## Use with context
- Domains: 3D-Animation, Character-Expression, Camera-Tracking
- Phases: Animation-Polishing, Curve-Editing
- Trigger: 首振り（LookAt）、手首の回転、身体の振り向きアニメーションのカーブ調整時

## Agent questions
- 首や頭がコンパスのように完全に水平な1軸（Y軸）だけで回転していないか？
- 回転の開始時または中間で、顎を引く・首を傾げるなどの副次的な軸の動きが入っているか？
- 回転の各軸のキーフレームタイミング（ピーク）が完全に同時になっていないか？

## Suggested actions
- 水平回転（Y軸）のアニメーションに対し、わずかなピッチ（X軸: うなずき）またはロール（Z軸: 傾き）のカーブを追加する。
- X/Z軸のイージングカーブのピークを、Y軸のピークから1〜3フレーム前後にオフセット（ずらし）する。
- 首の回転に先んじて目線を回転方向に先行させるキーを打つ。

## Review criteria
- 横を向く動作単体を見たときに、機械的な回転ではなく、意思を持って対象を見据えた有機的な動作に見えること。

## Anti-patterns
- 水平方向のLookAtコントローラーの値を首ボーンのYaw軸にダイレクトに接続して完結させること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
