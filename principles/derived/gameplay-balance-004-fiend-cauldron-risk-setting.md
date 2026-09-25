---
id: gameplay-balance-004-fiend-cauldron-risk-setting
title: "プレイヤー主導の難易度・リスクリターン選択（悪魔の釜方式）"
candidate_id: "GAMEPLAY_BALANCE_004_FIEND_CAULDRON_RISK_SETTING"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: risk-and-choice
---

# プレイヤー主導の難易度・リスクリターン選択（悪魔の釜方式）

## Summary
難易度をシステム側から押し付けるのではなく、プレイヤー自身がリソースを賭けて能動的にリスクとリターンを増減させる。

## SOURCE
『新・光神話 パルテナの鏡』の「悪魔の釜」では、ゲーム内通貨（ハート）を賭けてホンキ度（0.0〜9.0）を自由に設定する。 高難度にすれば敵が凶暴化するが神器やハートのリターンが跳ね上がる。 ミスするとハートがこぼれて自動的にホンキ度が下がり、手詰まりを防ぐ。

## GENERALIZED
「イージー・ノーマル・ハード」の固定選択ではなく、連続的なスケールでプレイヤーが自身の腕前や欲求に応じて賭け金と報酬を自己決定できる仕組み。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
固定の難易度選択は、プレイヤーが一度選ぶと変更しにくく、難しすぎて挫折するか、簡単すぎて退屈するかの二極化を招く。

## Use with context
- Domains: Difficulty System, Meta Progression, Economy
- Phases: System Design, Tuning
- Trigger: ゲームの難易度選択UI、またはステージ開始前のパラメータ設定を実装するとき

## Agent questions
- 難易度設定が単なる3択の静的スイッチになっていないか？ 報酬と連動しているか？

## Suggested actions
- 難易度スライダーとドロップ率/ゴールド倍率を連動させるデータ構造を定義する。
- 死亡時に自動で難易度パラメータを1ステップ下げてリトライさせるロジックを実装する。

## Review criteria
- プレイヤーが意図してリスク（難易度）を引き上げられる仕組みと、それに見合うインセンティブが存在するか。

## Anti-patterns
- 死亡を繰り返したプレイヤーにポップアップで『難易度を下げますか？』と露骨に問い、プライドを傷つけること。
- 高難度を選んでも名誉（実績）しか得られず、インゲームの明確な実利リターンがないこと。

## Tradeoffs and exceptions
- Tradeoff: 手触りが全体的にシビアになりやすく、最低難易度まで下げられることの周知が不足すると初心者が敬遠する。
- Exception: 全員が同一条件で競うランクマッチや、固定難易度前提のパズルゲーム。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
