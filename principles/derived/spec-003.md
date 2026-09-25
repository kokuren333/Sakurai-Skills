---
id: spec-003
title: "非対称なジャンプ加速度と初速による操作性の最適化"
candidate_id: "SPEC-003"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: controls-and-response
---

# 非対称なジャンプ加速度と初速による操作性の最適化

## Summary
自然な放物線に固執せず、上昇時と下降時の重力加速度・最高速を非対称にし、入力時間に応じた可変高度と着地時のキレを両立させよ。

## SOURCE
『スーパーマリオブラザーズ』は上昇がゆっくりで落下が速い。『メトロイド』はフワフワで射撃高度の微調整に向く。『魔界村』は空中横移動不能で着地点即時確定。『スマブラSP』ではカービィ等で初速を極端に高くし数フレーム極大の重力で急減速させて反応猶予を作る革新的ジャンプ仕様を採用。

## GENERALIZED
自然な放物線に固執せず、上昇時と下降時の重力加速度・最高速を非対称にし、入力時間に応じた可変高度と着地時のキレを両立させよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
等加速度の放物線はフワフワとして着地制御が難しく、足場渡りや攻撃回避のゲームプレイにおいてストレスになるため。

## Use with context
- Domains: Platformer, 2D/3D Action, Fighting
- Phases: Core Mechanics Implementation, Physics Tuning
- Trigger: ジャンプロジックの新規実装・改修、またはプラットフォーマーの操作感調整時

## Agent questions
- 上昇時の重力と下降時の重力が同一（単純な放物線）になっていないか？
- ボタンを押した時間の長短でジャンプ高度の微調整（小ジャンプ/大ジャンプ）が可能か？
- 初速を極端に上げて即座に減速させるなど、反応遅れを救済するカーブ設計が検討されているか？

## Suggested actions
- 上昇用重力（gravity_up）と下降用重力（gravity_down）を分離実装する。
- ジャンプボタン解放時に上昇速度を強制的に一定比率でクランプ（小ジャンプ処理）する。
- ジャンプ踏み切りフレーム（Pre-jump frames）を定義し、地上入力の誤検知を防ぎつつ最小限（数フレーム）に設定する。

## Review criteria
- 小ジャンプ・大ジャンプの出し分けが明瞭で、着地時の制御がプレイヤーの意図通りに決まるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
