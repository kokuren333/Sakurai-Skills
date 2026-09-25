---
id: skill-plan-005
title: "1入力多目的化によるコアメカニクスの再構築"
candidate_id: "SKILL-PLAN-005"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: controls-and-response
---

# 1入力多目的化によるコアメカニクスの再構築

## Summary
既存ジャンルの面白さを要素分解・考察し、単一ボタンの多重機能化（チャージ・タイミング等）で濃縮再構築せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
複雑な操作系を要素還元し、プレイヤーの「リスクとリターン」の意思決定が1つの直感的アクションの中に同時に凝縮されるようなメカニクスへと統合する。

## AGENT
ボタン数を減らすことはカジュアル化ではなく、1ボタンあたりの入力コンテキスト（押下時、ホールド中、リリース時、移動入力との併用）を極限まで洗練させる設計思想である。

## Why it matters
操作系が複雑化すると参入障壁が跳ね上がり、ゲームの純粋な駆け引き（リスクとリターンの判断）に集中できなくなるため。

## Use with context
- Domains: Action, Racing, Casual, Mobile
- Phases: Core Mechanics Design, Control Scheme, Prototyping
- Trigger: 

## Agent questions
- 現在複数のボタンに分かれている動作を、1つのボタンの「押す・溜める・離す」で統合できないか？
- その操作を行った際、明確なリスク（例：減速）とリターン（例：急旋回＋ブースト）が一体化しているか？

## Suggested actions
- ゲームの核となる気持ちよさを構成する物理・システム要素を箇条書きで分解する。
- ボタン押下状態（Down / Hold / Up）に異なるゲーム的意味を持たせ、ワンアクションで複数の結果を誘発する。

## Review criteria

## Anti-patterns
- アクションの種類を増やすために、安易に未割り当てのボタンへ新機能を1対1で割り振っていく拡張方式。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
