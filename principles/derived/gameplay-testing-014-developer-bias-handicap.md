---
id: gameplay-testing-014-developer-bias-handicap
title: "開発者の『慣れ』を排除するハンデ検証法"
candidate_id: "GAMEPLAY_TESTING_014_DEVELOPER_BIAS_HANDICAP"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: creator-workflow
---

# 開発者の『慣れ』を排除するハンデ検証法

## Summary
開発スタッフは一般プレイヤーより何十倍もゲームに慣れていることを自覚し、片手プレイ等の物理的ハンデを課して難易度を検証する。

## SOURCE
開発スタッフはゲームに慣れているため「簡単すぎない？」と思いがちだが、開発者がギリギリクリアできる難易度にすると世間では難しすぎるゲームになる。 社内の不慣れな人を呼ぶのも限界がある。 桜井氏はコントローラーを机に置いて片手で操作するなどの物理的ハンデをつけてテストプレイし、ちょうどよい難易度を探る。

## GENERALIZED
制作側とユーザー側の圧倒的な「習熟度の差（開発者バイアス）」を常に認識し、テストプレイ環境を意図的に劣悪化・制限化させて評価する。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
開発者の感覚に合わせて難易度を決めると、市場に出たときに「マニアにしかクリアできない理不尽ゲー」として即死する。

## Use with context
- Domains: Playtesting, Difficulty Tuning, QA Process
- Phases: Balancing, Final Polish
- Trigger: 難易度パラメータ（敵の攻撃力、フレーム猶予、弾速）の最終決定時

## Agent questions
- AIエージェントの最適入力（フレーム完璧な入力）ではなく、入力遅延やミス入力（ランダムなノイズ）を付与したエージェントでクリア可能か？

## Suggested actions
- 自動テストエージェントの入力に意図的な遅延（例: 150〜300ms）と誤入力率（例: 10%）を注入し、生存率を計測して難易度を下方調整する。

## Review criteria
- 最適行動を取らない不完全なプレイでも、ゲームが進行可能であることを検証できているか。

## Anti-patterns
- 社内の最上位ゲーマーのクリア報告を基準にしてマスターアップの難易度を確定すること。
- テストプレイヤーが詰まったのを見て「ここはこう動けば簡単なのに」と心の中で言い訳すること。

## Tradeoffs and exceptions
- Tradeoff: 下げすぎると、発売直後にヘビーゲーマーから「ボリューム不足」「歯応えがない」と叩かれる場合がある。
- Exception: 特定の超高難度を売り文句にするニッチ向けマゾゲー。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
