---
id: spec-014
title: "実力差を埋める動的ハンディキャップ（ハンデブースト）"
candidate_id: "SPEC-014"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 実力差を埋める動的ハンディキャップ（ハンデブースト）

## Summary
下位のプレイヤーをシステム的に強化・優遇するハンデブーストにより、力量差のある対戦でも最後まで拮抗した白熱の勝負を演出しろ。

## SOURCE
『マリオカート』の順位に応じたスピードアップブーストやアイテム優遇。『F-ZERO X』のブースト。『スマブラ』では原則として劣勢時強化（ほかほか補正等の固有システム除く）を忖度しない方針だが、スマッシュボールの出現優遇や『オートハンデ』仕様を用意。

## GENERALIZED
下位のプレイヤーをシステム的に強化・優遇するハンデブーストにより、力量差のある対戦でも最後まで拮抗した白熱の勝負を演出しろ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
家庭内や友人同士のカジュアルな対戦環境において、初心者や子供が一方的に負け続けて離脱するのを防ぐため。

## Use with context
- Domains: Party Games, Racing, Multiplayer Action
- Phases: Multiplayer Balancing, Game Mode Design
- Trigger: マルチプレイヤー対戦モード、レースゲームのAI/アイテム周りの設計時

## Agent questions
- 実力差があるプレイヤー同士が対戦した際、1位が独走して追いつけない展開になっていないか？
- 劣勢側への救済措置が露骨すぎて、上位側の努力を嘲笑うような仕様になっていないか？
- オートハンデや順位補正を無効化する『ガチ対戦設定』が存在するか？

## Suggested actions
- 順位やスコア差に応じた補正テーブル（移動速度係数、アイテム抽選ウェイトテーブル）を実装する。
- 連勝/連敗数に応じて初期ヘルスやダメージ倍率を自動増減させる『オートハンデ』機能を設ける。

## Review criteria
- 力量差のあるプレイヤー同士の対戦で、最終盤まで勝敗が読めず接戦になるドラマが頻度高く発生するか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
