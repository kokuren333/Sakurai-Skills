---
id: spec-011
title: "『はじき入力』による感情と速度の実体化"
candidate_id: "SPEC-011"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: controls-and-response
---

# 『はじき入力』による感情と速度の実体化

## Summary
アナログスティックの傾倒角だけでなく『倒す速度（短時間で端まで倒したか）』を検知し、ダッシュやスマッシュ攻撃などの直感操作に変換せよ。

## SOURCE
N64の3Dスティック登場時に桜井氏が考案した『はじき入力』。スマブラのダッシュ、スマッシュ攻撃、はじきジャンプ。『新・パルテナ』のダッシュ回避。ボタン併用や2度押しを不要にし、操作感覚に実体感を与える。

## GENERALIZED
アナログスティックの傾倒角だけでなく『倒す速度（短時間で端まで倒したか）』を検知し、ダッシュやスマッシュ攻撃などの直感操作に変換せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ボタン数や入力ステップを増やすことなく、操作の直感性と手触りの一体感（ダイナミズム）を飛躍的に向上させるため。

## Use with context
- Domains: Fighting, Action, Platformer
- Phases: Input System Architecture, Controls Tuning
- Trigger: アナログ入力を用いた移動・攻撃ロジックの設計時、入力レスポンスの拡張時

## Agent questions
- スティックの傾き量（Magnitude）だけでなく、単位時間あたりの変位（Velocity）を判定に使用しているか？
- 歩きからダッシュへの移行に余計なボタン操作を強要していないか？
- はじき感度の閾値をプレイヤーがオプションで調整できる設計になっているか？

## Suggested actions
- 入力バッファに直近数フレームのスティック座標履歴を保持し、中央付近から端までの到達フレーム数を計算する『はじき判定モジュール』を実装する。

## Review criteria
- スティックをゆっくり倒せば歩き、素早くパチンとはじけば即座にダッシュやスマッシュに派生すること。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
