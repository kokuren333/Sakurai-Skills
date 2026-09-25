---
id: fx-005-hit-mark-seven-requirements
title: "ヒットマークは7大原則（派手さ・メリハリ・位置・要素併用・キャラ非遮蔽・適切寿命・明度差）を満たせ"
candidate_id: "FX-005-HIT-MARK-SEVEN-REQUIREMENTS"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# ヒットマークは7大原則（派手さ・メリハリ・位置・要素併用・キャラ非遮蔽・適切寿命・明度差）を満たせ

## Summary
打撃エフェクトは『威力に見合う派手さ』『メリハリ』『正確なヒット位置』『複数要素の併用』『キャラを隠しすぎない』『適切な寿命』『明度差の確保』の7条件を厳守せよ。

## SOURCE
ヒットマークの7条件：①効果に見合った派手さ、②メリハリ、③ヒット位置は適切に、④さまざまな要素の併用、⑤キャラクターを隠しすぎない、⑥画面に残る長さが適切、⑦明度の差をつけること（背景が明暗どちらでも見えるよう黒を敷く）。ヒットストップ中も動かし続ける。

## GENERALIZED
打撃エフェクトは『威力に見合う派手さ』『メリハリ』『正確なヒット位置』『複数要素の併用』『キャラを隠しすぎない』『適切な寿命』『明度差の確保』の7条件を厳守せよ。

## AGENT
ヒットストップ（Hitstop）の静止時間とヒットマークアニメーション（Animation）の非同期再生（Unscaled Time）により、静と動のコントラストが生まれる。

## Why it matters
ヒットマークはアクションゲームにおける『報酬の瞬間』そのものである。位置がズレていたり、背景に溶けて見えなかったり、キャラを覆い隠して次の状況が見えなくなると、プレイヤーの爽快感と戦況判断が著しく阻害される。

## Use with context
- Domains: Combat System, VFX Design, Animation Timing
- Phases: Combat Prototyping, VFX Polish
- Trigger: ダメージ処理・ヒット判定（Hitbox Collision）のコールバック実装時

## Agent questions
- HitPositionはCollider.ClosestPoint等の交点から正確に算出されているか？
- エフェクトの生存時間（Duration）が連続ヒットを阻害しない長さに収まっているか？

## Suggested actions
- ヒットエフェクトのインスタンス生成ロジックで、接触点の法線ベクトルに応じた角度オフセットを適用する。
- パーティクルシステムの`useUnscaledTime = true`を設定する。

## Review criteria
- 激しい連続攻撃でも前のエフェクトが画面を塞がず、攻撃が当たった瞬間の快感が明確に得られること。

## Anti-patterns
- 単一のスプライトがポンと出て消えるだけの簡素すぎるヒットエフェクト。
- ヒットストップ中にエフェクトまで完全停止し、画面全体がフリーズしたように見える実装。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 大量の敵を一掃する無双系ゲーム（個別ヒットマークが画面を埋め尽くすため、意図的に簡略化・間引きする）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
