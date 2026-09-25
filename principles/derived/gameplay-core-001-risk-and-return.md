---
id: gameplay-core-001-risk-and-return
title: "リスクとリターンの対構造設計"
candidate_id: "GAMEPLAY_CORE_001_RISK_AND_RETURN"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: risk-and-choice
---

# リスクとリターンの対構造設計

## Summary
ゲーム性とは『リスクを冒してリターンを得るかけひき』であり、攻略とは『リスクを抑えてリターンを得る工夫』である。

## SOURCE
ゲーム性は曖昧な言葉だが、本質は『かけひき』であり『リスクとリターン』である。 インベーダーにおいて敵に近づくほど撃破しやすい（リターン大）が被弾確率が上がる（リスク大）。 スーパーマリオにおいて敵に最接近して踏む行為も同様。砲台の横幅や接触判定の距離がリスクの大きさを決定するキモである。

## GENERALIZED
プレイヤーの全行動（移動・攻撃・リソース消費）において、得られる利益（撃破、得点、進行）と背負う不利益（被弾、死亡、コスト喪失）を不可分な対として設定する。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ゲームからリスクとリターンの連動が失われると、ただの単調な作業や安全策の連打になり、達成感や快感が消失する。

## Use with context
- Domains: Combat System, Movement Mechanics, Level Design, Economy
- Phases: Concept, System Design, Balancing
- Trigger: 戦闘アクション、スキル、判定範囲、または敵AIを設計・実装するとき

## Agent questions
- このアクションや武器において、プレイヤーが負うリスク（硬直・接近・消費）は何で、リターン（ダメージ・撃破）と釣り合っているか？

## Suggested actions
- 高威力攻撃の射程を短くするか、発生前後の硬直フレームを延長する。
- 敵の攻撃判定発生ポイントを検証し、超近接時のリスクとリターンの逆転現象（ブラインドスポット等）を仕様として制御する。

## Review criteria
- 最強の攻撃行動が最も高いリスクを伴っているか確認すること。

## Anti-patterns
- 3方向に全方位攻撃できるような、リスクを背負わず広範囲を殲滅できる安易な強化。
- 安全地帯から敵を一方的にハメ倒せるマップ形状やAI挙動。

## Tradeoffs and exceptions
- Tradeoff: リスクを高めすぎると緊張感は増すがカジュアル層が脱落し、低くしすぎると緊張感が失われる。
- Exception: 演出や世界観を楽しむウォーキングシミュレーター、インタラクティブノベル等では厳密なリスクリターンは不要。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
