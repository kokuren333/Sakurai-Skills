---
id: skill-a17-unwavering-core-concept
title: "コンセプトは貫くもの（灯台の灯火と迷走防止）"
candidate_id: "SKILL-A17-UNWAVERING-CORE-CONCEPT"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: concept-and-direction
---

# コンセプトは貫くもの（灯台の灯火と迷走防止）

## Summary
長期開発で疲弊や迷いが生じても、初期に定めたコアコンセプト（灯台の灯火）を絶対に変更するな。

## SOURCE
開発が長引くと何が面白いかわからなくなるが、最初に決めたコンセプトは絶対に曲げてはならない。コンセプトは灯台の灯火であり、嵐が来ても変えてはいけない。途中で変えるとスクラップ＆ビルドで全てが無駄になる。

## GENERALIZED
開発の長期化に伴う「見慣れによる飽き（Sensory Adaptation）」と「本来の製品価値」を明確に区別し、プロジェクトの北極星（North Star）を一貫して維持する。

## AGENT
プロジェクト中盤で「なんか面白くない気がする」という理由から根本的な仕様変更（ちゃぶ台返し）が提案された際、エージェントがそれを抑止するための防御プロトコル。

## Why it matters
途中でコンセプトを変えると、それまでに作成した膨大なアセットやコードが無駄になり、チームが疲弊してプロジェクトが崩壊するため。

## Use with context
- Domains: game_design, scope_management, direction
- Phases: production, mid_development, polishing
- Trigger: 開発中盤以降に大規模な方向転換、ジャンル変更、または主要システムの廃止が提案されたとき

## Agent questions
- その「面白くない」という感覚は、単に毎日見すぎて開発チームが飽きているだけではないか？
- この変更は初期の『灯台の灯火（コアコンセプト）』に向かっているか、それとも迷走か？

## Suggested actions
- 初期の企画書に書かれたコンセプト文を再提示し、現在の課題がコンセプトの変更なしに解決可能か検証する
- コンセプト変更に伴うアセット廃棄コストとスケジュール影響を試算し、変更の不可逆性を警告する

## Review criteria
- 実装された機能群が、初期企画書のコアコンセプトと直線的に結びついていること
- 開発者の個人的な「飽き」を理由にした場当たり的な仕様追加・変更が排除されていること

## Anti-patterns
- 開発が2年目に突入して見慣れた結果、「やっぱりオープンワールドにしよう」と突然方針転換する
- スタッフのモチベーション低下に引きずられて、核となるゲーム性を途中で放棄する

## Tradeoffs and exceptions
- Tradeoff: 初期コンセプト自体が根本的に間違っていた場合のピボットが遅れるリスクがあるが、迷走による自滅は防げる。
- Exception: プロトタイプ初期の検証段階（Pre-production）において、コンセプトの成立自体が否定された場合。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
