---
id: skill-mot-004
title: "モーション補間の間引きと初動キレの創出"
candidate_id: "SKILL-MOT-004"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# モーション補間の間引きと初動キレの創出

## Summary
3Dツールの自動補間に任せず、かまえから攻撃ポーズへの遷移（中割）を極限まで間引き、初動のタメと打撃瞬間のポーズに時間を配分せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
3Dツールの自動補間に任せず、かまえから攻撃ポーズへの遷移（中割）を極限まで間引き、初動のタメと打撃瞬間のポーズに時間を配分せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
補間が効きすぎたモーションは操作入力に対して重く感じられ、格闘・アクションゲーム特有の「キレ味」や「爽快感」を著しく損なうため。

## Use with context
- Domains: Action, Fighting, 3D-Animation, Stylized-Combat
- Phases: Animation-Polishing, Curve-Editing, Playability-Review
- Trigger: 格闘技や打撃アクションのアニメーションカーブ調整、2D格闘技原作の3D化実装時

## Agent questions
- 中割りの補間フレームが多すぎて、パンチやキックがスローモーションのように見えていないか？
- かまえ（引き絞り）からインパクトのフレームへの移動が1〜2フレームで一気に跳躍しているか？

## Suggested actions
- かまえから攻撃ポーズへ至る中割りのフレーム数を削減し、1フレームで中間を通過させる。
- タイムライン上のキーフレーム配置を、等間隔ではなく「タメで粘り、一瞬で放ち、フォロースルーで止まる」カーブに変更する。

## Review criteria
- 攻撃判定の発生フレームとポーズの到達フレームが完全に同期し、視覚的なキレが感じられること。

## Anti-patterns
- 3Dアニメーションツールのリニア／スプライン補間をそのまま流し込み、パンチの途中の腕の軌跡がぬるぬると見える状態。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
