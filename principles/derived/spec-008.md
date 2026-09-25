---
id: spec-008
title: "状況適応型のガケぎわ（エッジ）挙動設計"
candidate_id: "SPEC-008"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 状況適応型のガケぎわ（エッジ）挙動設計

## Summary
エッジからの落下を無条件の自由落下とせず、通常移動・通常攻撃・突進技などのアクション状態に応じて『落ちる/留まる/オートジャンプ』を切り替えよ。

## SOURCE
『ロックマン』等の昔のゲームは無条件落下。『スマブラ』ではフォックスのイリュージョンは崖で止まり、ファルコンキックは飛び出すが終わり際なら止まる。『ゼルダの伝説 時のオカリナ』のオートジャンプ。『Ghost of Tsushima』の浅い角度の落下防止補正。

## GENERALIZED
エッジからの落下を無条件の自由落下とせず、通常移動・通常攻撃・突進技などのアクション状態に応じて『落ちる/留まる/オートジャンプ』を切り替えよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
不意の落下による理不尽な死やアクションの中断を防ぎ、プレイヤーが足場際でもアグレッシブに立ち回れるようにするため。

## Use with context
- Domains: 2D/3D Platformer, Action, Fighting
- Phases: Collision System, Character State Machine Implementation
- Trigger: キャラクターの崖（エッジ）判定、落下判定、足場制御の実装時

## Agent questions
- 通常攻撃の踏み込みで足場からポロポロと落下し、攻撃動作が中断されていないか？
- 高所からの落下即死があるゲームで、スティックの浅い入力による意図しない踏み外しを防止する補正があるか？

## Suggested actions
- キャラクター接地判定に『エッジ検出（Ledge Detection）』を追加する。
- アクションステートマシンに `can_fall_off_ledge` フラグを設け、地上通常攻撃中はエッジで移動をクランプする。
- 突進技や回避技には、技のフェーズ（発生・持続・硬直）ごとに落下許容フラグを切り替える。

## Review criteria
- 崖ぎわで技を出しても意図せず落ちず、かつ意図して崖外へ飛び出そうとした際にはスムーズに落下できるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
