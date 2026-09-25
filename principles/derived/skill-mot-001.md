---
id: skill-mot-001
title: "ダメージ初動の極端化とヒットストップ連携"
candidate_id: "SKILL-MOT-001"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: feedback-and-game-feel
---

# ダメージ初動の極端化とヒットストップ連携

## Summary
ダメージを受けた最初の1フレーム目は、ヒットストップ中に最も視認されるため、待機姿勢とは完全に異なる極端で痛烈なポーズを即座に取らせよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
ダメージを受けた最初の1フレーム目は、ヒットストップ中に最も視認されるため、待機姿勢とは完全に異なる極端で痛烈なポーズを即座に取らせよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
対戦ゲームやアクションゲームにおいて、攻撃が命中したという「手応え」と「被弾した事実」を瞬時にプレイヤーに理解させ、納得感と操作レスポンスを高めるため。

## Use with context
- Domains: Action, Fighting, Combat-System, 3D-Animation
- Phases: Animation-Implementation, Hit-Reaction-Design, VFX-Feedback-Review
- Trigger: キャラクターの被弾モーション（ダメージリアクション）やヒットストップ処理を実装・調整するとき

## Agent questions
- 被弾1フレーム目のポーズは、直前の待機ポーズや攻撃ポーズとシルエットが明確に差別化されているか？
- ヒットストップがかかる瞬間のポーズは、最も痛烈かつ力の方向が伝わる形になっているか？
- 被弾時に余計なブレンドや補間が入り、衝撃が伝わる速度が鈍っていないか？

## Suggested actions
- 被弾時のステート遷移において、遷移ブレンド時間を0F（即時切り替え）に設定する。
- 1フレーム目のキーポーズを手足の開き・首の角度を含めて外側に強調したシルエットに調整する。
- ヒットストップ処理の開始フレームを被弾判定の成立フレームと完全に一致させる。

## Review criteria
- 画面引き視点でも被弾したキャラクターと攻撃の強さが即座に判別できること。
- 1フレーム目の静止画単体で「痛烈な打撃を受けた」ことが伝わること。

## Anti-patterns
- 待機姿勢の重心や手足の位置を少し崩しただけの弱いダメージポーズ。
- 被弾アニメーションの再生開始時に数フレームのクロスフェード補間をかけ、初動をぬるくすること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
