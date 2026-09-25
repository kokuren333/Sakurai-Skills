---
id: gameplay-physics-006-contrasting-elements
title: "快感を際立たせる相反要素（制約・対比）の導入"
candidate_id: "GAMEPLAY_PHYSICS_006_CONTRASTING_ELEMENTS"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: onboarding-and-learning
---

# 快感を際立たせる相反要素（制約・対比）の導入

## Summary
空を飛ぶ気持ちよさを生むには墜落の危険を、高速感を生むには減速や障害物を、相反する要素として必ずセットで配置する。

## SOURCE
自由に空を飛ぶ気持ちよさを演出するなら、必ず落ちる仕組みやペナルティを加える必要がある。 何もない大空をただ飛ぶだけでは緊張感も浮遊感も生まれない。 橋の下をくぐるリスク、水面や地面に激突する危険があるからこそ、上手に抜けたときの快感が生まれる。

## GENERALIZED
ある感覚（スピード、浮遊、無敵）を強調したい場合、その感覚を直接強化するだけでなく、真逆の制約（減速トラップ、高低差、激突死）を環境に配置して対比させる。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
制約のない自由は、数分でプレイヤーを不感症（無刺激・退屈）にさせる。

## Use with context
- Domains: Flight Simulation, Racing Mechanics, Movement Systems
- Phases: Mechanics Prototyping, Level Design
- Trigger: 移動ギミック、飛行システム、レースコースの設計・実装時

## Agent questions
- プレイヤーが最高速や飛翔状態を維持するにあたり、リスクとなる地形や制限（燃料・高度）が対比として存在するか？

## Suggested actions
- 広大すぎるオープン空間にランドマークや潜り抜け可能な障害物（トンネル、橋脚梁）を配置する。

## Review criteria
- 爽快な移動アクションと、それを脅かす環境リスクがセットで機能しているか。

## Anti-patterns
- 衝突判定のない広大な虚空だけを用意して『自由に飛べるゲーム』にしてしまうこと。

## Tradeoffs and exceptions
- Tradeoff: 障害物を増やしすぎると移動の爽快感が阻害され、ストレスが勝ってしまう。
- Exception: 操作練習用のチュートリアル空間や、環境観察を目的としたセーフティモード。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
