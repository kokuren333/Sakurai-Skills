---
id: skill-mot-010
title: "攻撃判定（正中線・発生点）とモーションの同期"
candidate_id: "SKILL-MOT-010"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# 攻撃判定（正中線・発生点）とモーションの同期

## Summary
攻撃モーションは画面の正中線を確実に通過させ、クリーンヒットの瞬間（最も攻撃感の強いポーズ）で判定が発生するよう設計せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
攻撃モーションは画面の正中線を確実に通過させ、クリーンヒットの瞬間（最も攻撃感の強いポーズ）で判定が発生するよう設計せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
プレイヤーの目と操作感覚が完全に一致し、公平で納得感のあるヒットフィードバックを生み出すため。

## Use with context
- Domains: Combat-Design, Collision-System, Action-Animation
- Phases: Combat-Implementation, Animation-Review, Hitbox-Tuning
- Trigger: 攻撃アニメーションの軌跡作成時、およびHitbox（攻撃判定）のフレーム配置・コライダ調整時

## Agent questions
- 攻撃の軌跡（スラッシュのエフェクトや腕の軌道）は、交戦軸（正中線）を正確に跨いでいるか？
- 攻撃判定が発生するフレームのポーズは、その技の中で最も力が乗った「決めポーズ」になっているか？

## Suggested actions
- 上面視点（Top View）から攻撃軌跡を確認し、正中線（Z=0などの基準平面）を通過するようキーポーズの奥行きを補正する。
- Hitboxの発生フレームを、武器が最も加速し振り抜かれた瞬間（最大拡張ポーズ）に合わせる。

## Review criteria
- 上面カメラで見ても、攻撃判定コライダと武器のメッシュが同一平面上で重なっていること。

## Anti-patterns
- 見た目は大振りに剣を振っているが、Z軸奥や手前に反れていて正面の敵にヒットしないモーション。
- 攻撃判定がすでに出終わった後に、キャラクターが一番派手な攻撃ポーズをとるようなタイミングのズレ。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
