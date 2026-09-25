---
id: concept-reduce-punishment-for-beginners
title: "初心者向けリスク低減と即死回避の二重安全設計"
candidate_id: "concept_reduce_punishment_for_beginners"
source_file: "../../sources/raw/planning-concepts.md"
semantic_cluster: onboarding-and-learning
---

# 初心者向けリスク低減と即死回避の二重安全設計

## Summary
体力制アクションにおいて、理不尽な即死落下を排し、敵そのものを攻撃リソース化して初心者のリスクを最小化せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
失敗時のペナルティ（落下即死など）を基幹メカニクスで能動的に回避・緩和できるようにし、プレイヤースキルの要求値を段階化する。

## AGENT
プレイヤーに無限のリカバリー手段（ホバリング）を与える場合、ゲームの緊張感が崩壊しやすいため、敵配置や画面スクロール速度による自然な制約設計がセットで必要になる。

## Why it matters


## Use with context
- Domains: Action, Platformer, Level Design
- Phases: Concept, Prototyping, Mechanics Design
- Trigger: プラットフォーマーやアクションゲームのプレイヤー移動・被ダメージ仕様を策定・レビューするとき

## Agent questions
- プレイヤーが意図しないワンミスでゲームオーバーになっていないか？
- 操作が不慣れな状態でも突破できるアクション（救済手段）が実装されているか？

## Suggested actions
- 落下判定の即死フラグを再確認し、復帰猶予や浮遊アクションの導入を提案する。
- 基本アクションの入力を単一ボタン・直感操作に集約する。

## Review criteria
- 初見プレイヤーが序盤ステージで落下死を繰り返さずにクリア可能であること。
- 救済アクションの存在がゲームの根本的な楽しさを阻害していないこと。

## Anti-patterns
- 体力制ゲームなのに、即死トラップや不可避の落下穴が頻出する構成。
- 初心者が最初のステージで操作方法や精密なジャンプを要求されて脱落する仕様。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 『即死の緊張感』そのものがゲームのコア体験である死ににげ系（Souls-like等）や精密ジャンプアクション。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
