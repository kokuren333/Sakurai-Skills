---
id: skill-mot-006
title: "引き視点CGにおけるフェイシャルの過剰誇張"
candidate_id: "SKILL-MOT-006"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# 引き視点CGにおけるフェイシャルの過剰誇張

## Summary
俯瞰・引き視点のゲーム画面では表情情報が著しく減退するため、目・口・顎の変形を解剖学的限界以上に大げさに動かせ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
俯瞰・引き視点のゲーム画面では表情情報が著しく減退するため、目・口・顎の変形を解剖学的限界以上に大げさに動かせ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
画面上で小さく表示されるキャラクターの表情が死に、無機質で感情のない人形に見えてしまうのを防ぐため。

## Use with context
- Domains: Facial-Animation, Character-Art, Camera-Design
- Phases: Facial-Rigging, Animation-Polishing, Model-Retouch
- Trigger: キャラクターの表情（フェイシャル）アニメーション作成、またはダメージ顔・叫び顔のレビュー時

## Agent questions
- 実際のゲームプレイカメラ（最大引き視点）で見た時に、表情の変化が判別できるか？
- 口を開ける際、前歯が上下で重なって口腔の開きが隠れてしまっていないか？
- 見開き目において、上下の白目がしっかり露出しているか？

## Suggested actions
- 口の開き量（Jaw Drop/Mouth Open）を基準値の1.3〜1.5倍に拡張する。
- 顎ボーンを骨格の自然な回転軸よりさらに下・前方へ引き出し、口腔内の影を強調する。
- 見開き表情のブレンドシェイプで、上下まぶたを虹彩から離して白目を露出させる。

## Review criteria
- プレイ視点（遠景）の静止画キャプチャで、喜怒哀楽や苦痛が明確に識別できること。

## Anti-patterns
- カットシーン用の繊細で微細なリップシンクや表情変化をそのまま引き視点のアクション中に適用すること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
