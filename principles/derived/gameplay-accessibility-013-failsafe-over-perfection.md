---
id: gameplay-accessibility-013-failsafe-over-perfection
title: "進行不能を防ぐ救済策の優先配備（クリアできないよりマシ）"
candidate_id: "GAMEPLAY_ACCESSIBILITY_013_FAILSAFE_OVER_PERFECTION"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: difficulty-and-accessibility
---

# 進行不能を防ぐ救済策の優先配備（クリアできないよりマシ）

## Summary
難易度が高すぎてプレイヤーが途中で諦めてしまうくらいなら、屈辱感のない形でステージスキップや救済策を用意する。

## SOURCE
何十時間もかけたゲームなのに、最後の最後が難しすぎてクリアできなかったら無価値になり、何としても避けたい事態。 昔のようにヒリヒリした戦いを強いるのは時代に合わない面もある。 屈辱感がない範囲で、難易度の一時的変更、ステージスキップ、チート的アシストなどの救済策を持たせるべき。

## GENERALIZED
「ゲーム本来の駆け引き」を多少損なってでも、「最後までプレイしてもらうこと」を優先するセーフティネットを必ず用意する。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
プレイヤーがクリアを諦めて放置した瞬間、そのゲームのエンディングやそれ以降のコンテンツは存在しないのと同じになる。

## Use with context
- Domains: Accessibility, Game Flow, Assist Features
- Phases: System Design, UI Design
- Trigger: 難所ボス、精密プラットフォーマー、またはゲームオーバー処理の設計時

## Agent questions
- 同じ箇所でN回以上失敗したプレイヤーに対する救済トリガーが存在するか？

## Suggested actions
- 失敗回数カウンタを導入し、閾値を超えた場合に進行をアシストするオプション（スキップ・補助機能）を有効化可能にする。

## Review criteria
- ゲーム進行が完全に閉塞（ソフトロック・腕前ロック）するリスクが排除されているか。

## Anti-patterns
- 「死にゲーだから」という理由だけで、救済措置や難易度調整を一切頑なに拒否し、大量の購入者を脱落させること。
- 救済機能を使ったプレイヤーに対して「ヘタレ」「チキン」といった屈辱的な称号やグラフィックを強制すること。

## Tradeoffs and exceptions
- Tradeoff: 救済策が手軽すぎると、苦難を乗り越えて得られる本来のカタルシスが損なわれる。
- Exception: 『ソウルシリーズ』のように「理不尽な困難を自力で克服すること」自体が唯一無二のブランド価値である特化型タイトル。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
