---
id: fx-007-slash-trail-methodology
title: "剣撃の風切り（軌跡）は生成メッシュと固定板ポリゴンを速度・用途で使い分けよ"
candidate_id: "FX-007-SLASH-TRAIL-METHODOLOGY"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# 剣撃の風切り（軌跡）は生成メッシュと固定板ポリゴンを速度・用途で使い分けよ

## Summary
剣などの軌跡表現は、リアルタイム生成メッシュ（扇状追従）を基本としつつ、超高速な1フレーム抜刀にはテクスチャ板ポリゴンを瞬時配置せよ。

## SOURCE
風切りの方法は2通り：①通った軌跡にポリゴン生成（扇状、尾はフェード）、②板ポリゴンの1枚絵を配置（1Fで振り抜く超高速技用）。剣速が速いとガクガクになる。横から見て見えない水平斬りはモーションを直して斜めに振らせる。キャラの特性に応じた色・形状の差別化。

## GENERALIZED
剣などの軌跡表現は、リアルタイム生成メッシュ（扇状追従）を基本としつつ、超高速な1フレーム抜刀にはテクスチャ板ポリゴンを瞬時配置せよ。

## AGENT
風切りは当たり判定の可視化（Hitbox Visualization）としても機能するため、見た目の円弧と実際の攻撃コライダの同期が必須である。

## Why it matters
剣撃アクションで風切りがないと、いつ振られたのか、どこを攻撃したのかが全く把握できない。また、横スクロール視点で水平に振ると軌跡の厚みが0になり、画面上からエフェクトが消失してしまう。

## Use with context
- Domains: VFX Trail System, Melee Combat, Motion Design
- Phases: Animation Tuning, VFX Implementation
- Trigger: 近接武器スイング（Slash/Melee Trail）のアニメーションおよびVFXセットアップ時

## Agent questions
- スイング軌道面とカメラ前方ベクトルの内積が0（平行）に近くなっていないか？
- スイング速度に対してTrailの頂点生成ステップ数が十分か？

## Suggested actions
- スイングの開始フレームと終了フレームが1〜2Fの場合、TrailRendererではなくStatic Arc Meshのスポーンに切り替えるスクリプトを組む。
- アニメーションのキーフレームを走査し、カメラ正対面に対する傾きが不足している場合にボーン回転オフセットを提案する。

## Review criteria
- あらゆる斬撃の円弧が美しい弧を描いて視認でき、かつ先端・基部の特性が表現されていること。

## Anti-patterns
- カメラの視線ベクトルと完全に平行な平面上で武器を振らせ、軌跡が画面から消滅する状態を放置する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 極めてリアルなフェンシングシミュレーターなど、空気抵抗や残像を一切可視化しない世界観。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
