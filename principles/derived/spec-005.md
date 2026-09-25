---
id: spec-005
title: "注視点の動的オフセット（カメラ注視点をキャラに完全追従させない）"
candidate_id: "SPEC-005"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: camera-and-effects
---

# 注視点の動的オフセット（カメラ注視点をキャラに完全追従させない）

## Summary
3D/2Dカメラの注視点はキャラクター座標に完全固定せず、垂直移動の追従遅延や進行方向へのオフセットを設けて高低差と視野を確保せよ。

## SOURCE
『スーパーマリオ64』では歩行時は画面中央だがジャンプ時はキャラが画面上方にズレて高さを表現。『カービィのエアライド』のドリフト抜け時のマシンオフセット。『アーマード・コア』の旋回時オフセット。『Dead Cells』の進行方向視野拡張。

## GENERALIZED
3D/2Dカメラの注視点はキャラクター座標に完全固定せず、垂直移動の追従遅延や進行方向へのオフセットを設けて高低差と視野を確保せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
プレイヤーはキャラクターの『画面内での相対的な位置変化』によって跳躍の高さや移動のスピード、迫りくる危険を直感的に把握するため。

## Use with context
- Domains: 3D Platformer, 3D Action, Racing, 2D Scrolling
- Phases: Camera System Design, Core Gameplay Implementation
- Trigger: カメラの追従スクリプト実装時、またはジャンプ・ダッシュの浮遊感・高低差表現の改善時

## Agent questions
- ジャンプした際、キャラクターが画面の中央にとどまり続けて高低差が分かりにくくなっていないか？
- 高速移動時に進行方向の前方が狭く、障害物や敵の発見が遅れないか？

## Suggested actions
- カメラのLookAtターゲットにダンピング（遅延フィルタ）を適用し、特にY軸の追従速度を落とす。
- 移動入力の向き・速度に応じて、注視点を前方へオフセット（Forward Lookahead）させる。

## Review criteria
- 大ジャンプした際にキャラクターが画面上方に位置し、着地に向けて落ちていくダイナミックな高低差が視認できるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
