---
id: concept-anti-combo-adlib-combat
title: "操作固定コンボの排除とアドリブ性・蓄積ダメージによる状況変化設計"
candidate_id: "concept_anti_combo_adlib_combat"
source_file: "../../sources/raw/planning-concepts.md"
semantic_cluster: controls-and-response
---

# 操作固定コンボの排除とアドリブ性・蓄積ダメージによる状況変化設計

## Summary
暗記入力による一方的なコンボを排し、蓄積状況によってリアクションが毎回変わるアドリブ性の高い対戦設計にせよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
固定の確定ルート（一方的な拘束時間）を最小化し、プレイヤーのパラメータ（蓄積ダメージや位置関係）によって常に相互作用の結果がブレる動的環境を設計する。

## AGENT
プレイヤーが操作を受け付けない時間（スタン、お手玉コンボ）を減らし、常に受身やベクトル変更などの介入余地を残すことが対戦の面白さを維持する。

## Why it matters


## Use with context
- Domains: Fighting Games, PvP Combat, Combat System
- Phases: Mechanics Design, Combat Balance
- Trigger: 格闘・対戦アクションゲームの戦闘メカニクス、被ダメージ処理、入力体系を設計するとき

## Agent questions
- 被弾側のプレイヤーに脱出や抵抗の選択肢が残されているか？
- 入力の成否ではなく、間合いの駆け引きに意識が向くインターフェースになっているか？

## Suggested actions
- コマンド入力判定ルーチンを方向＋ボタンの直感型マッピングに変更する。
- 固定ノックバックを廃止し、累積ダメージに応じた可変ノックバック計算式を導入する。

## Review criteria
- 初心者でも技を即座に出せること。
- 被弾側が一方的な拘束を感じず、次の行動への判断を行えること。

## Anti-patterns
- 10割コンボや、初心者が操作不能のまま画面端でハメ殺されるゲームデザイン。
- 複雑怪奇なコマンド入力を成立させること自体が参入障壁になっている仕様。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 高難度コマンド成功の快感や、確定コンボの完走そのものを楽しむクラシック格闘ゲーム。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
