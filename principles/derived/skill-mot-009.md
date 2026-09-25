---
id: skill-mot-009
title: "グリップ指の斜め握りとボーン負荷の簡素化"
candidate_id: "SKILL-MOT-009"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# グリップ指の斜め握りとボーン負荷の簡素化

## Summary
物を握る手は前腕に合わせて斜めにグリップさせて自然さを保ち、不要な指ボーン処理は描画・計算負荷に応じて大胆に削減せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
物を握る手は前腕に合わせて斜めにグリップさせて自然さを保ち、不要な指ボーン処理は描画・計算負荷に応じて大胆に削減せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
武器保持時の見た目の違和感を解消しつつ、画面全体の処理落ち（フレームレート低下）を回避するため。

## Use with context
- Domains: 3D-Modeling, Rigging, Performance-Optimization, Weapon-Handling
- Phases: Model-Rigging, Weapon-Attachment, Optimization
- Trigger: キャラクターの武器装備アタッチメント設定、およびスケルトン構造・LODの最適化時

## Agent questions
- 剣や銃のグリップに対して、指の巻き付き角度が直角（不自然な筒握り）になっていないか？
- 引き視点でしか映らないキャラクターに、全関節可動の指ボーンを常時計算させていないか？

## Suggested actions
- 武器ソケット（Socket）の角度を調整し、人差し指から小指にかけて斜めの傾斜をつけてグリップさせる。
- ゲーム性やカメラ距離に応じて、指のボーン階層を1本化（ミトン状）または数パターンのポーズ切り替えに簡素化する。

## Review criteria
- 武器を構えたアップ時に指と柄の間に不自然な隙間や直角感がなく、手首から流れるラインが形成されていること。
- 複数体表示時のアニメーション計算コスト（Skinning / Evaluation）が目標バジェット内に収まっていること。

## Anti-patterns
- すべての指を完全に直角に巻きつけ、おもちゃのブロックフィギュアのように武器を持たせること。
- 乱戦アクションゲームにおいて、画面奥の小さな敵キャラにまでフルリグの指アニメーションを適用し続けること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
