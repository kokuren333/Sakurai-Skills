---
id: gameplay-balance-010-gameplay-vs-accessibility
title: "ゲーム性向上と一般性（アクセシビリティ）のトレードオフ認識"
candidate_id: "GAMEPLAY_BALANCE_010_GAMEPLAY_VS_ACCESSIBILITY"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: difficulty-and-accessibility
---

# ゲーム性向上と一般性（アクセシビリティ）のトレードオフ認識

## Summary
かけひきやゲーム性を高めれば高めるほどルールと操作が高度化し、初心者を排除して一般性が下がることを自覚して調整する。

## SOURCE
『ゲーム性が上がれば一般性が下がる』。 初代『星のカービィ』はあえてゲーム性を下げて一般性を上げた例。 吸い込み範囲を広くし、体力制（6回耐える）にし、いつでも空を飛べるようにして穴落下の即死を避けた。 ゲーム性を突き詰めすぎるとマニア向けになり、間口が極端に狭まる。

## GENERALIZED
ターゲットユーザー層を意識的に決定し、意図的にゲーム性（シビアな駆け引きや操作精度）を「引き算」する勇気を持つ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
全方位にウケようとしてゲーム性（駆け引き）もカジュアルさも同時に最大化することは論理的に不可能であり、破綻する。

## Use with context
- Domains: Core Mechanics, Target Audience Definition, Difficulty Curve
- Phases: Concept, Balancing
- Trigger: 操作仕様の策定時、またはプレイヤーの被ダメージ・即死判定の仕様策定時

## Agent questions
- この仕様はターゲットユーザーのゲーム熟練度と合致しているか？ 初心者が触ったときに理不尽な壁にならないか？

## Suggested actions
- 落下即死を「ダメージを受けて直前の足場に復帰」に変更するオプションやデフォルト仕様を検討・実装する。

## Review criteria
- 想定ターゲットに対し、要求される操作精度や知識量が過剰になっていないか。

## Anti-patterns
- 「奥深い駆け引き」と「誰でもすぐ遊べる」を両立させようとして、中途半端でどちらの層も満足できないシステムにすること。

## Tradeoffs and exceptions
- Tradeoff: 一般性を高めるためにゲーム性を下げると、ヘビーゲーマーからは『スリルがなく物足りない』と評価される。
- Exception: 任天堂の『スマブラ』のように、シンプルな操作体系の土台の上で、上級者のかけひきを成立させる極めて綿密な多層設計に成功した稀有な例。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
