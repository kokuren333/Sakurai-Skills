---
id: fx-006-billboard-appropriate-use
title: "ビルボードの特性を理解し、カメラ回転と軸制約（Y軸固定）に留意せよ"
candidate_id: "FX-006-BILLBOARD-APPROPRIATE-USE"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: camera-and-effects
---

# ビルボードの特性を理解し、カメラ回転と軸制約（Y軸固定）に留意せよ

## Summary
板ポリゴンを常にカメラへ向けるビルボードは低負荷で実体なき表現に最適だが、カメラ旋回時の不自然さやY軸固定の誤用によるペラペラ化に注意せよ。

## SOURCE
ビルボードはカメラに正対する板ポリゴン。描画コストが安く発光や実体を持たないものの表現に最適。マリオ64の鉄球やボムキングの体。スマブラの食べ物。Y軸ビルボードを間違えてエフェクトに使うと細い板に見える。

## GENERALIZED
板ポリゴンを常にカメラへ向けるビルボードは低負荷で実体なき表現に最適だが、カメラ旋回時の不自然さやY軸固定の誤用によるペラペラ化に注意せよ。

## AGENT
現代の高精細グラフィックスでは、単純なビルボード単体ではなく、カメラ距離に応じたインポスター（Impostor）やメッシュエフェクトへのシームレスな切り替えが求められる。

## Why it matters
パーティクルをすべて3Dメッシュで描画すると処理落ちを招き、逆に何でもビルボードにするとカメラが斜めや上方に見下ろした際に平面的でチープな板切れであることが露呈する。

## Use with context
- Domains: Rendering, VFX Architecture, Optimization
- Phases: Asset Design, LOD Implementation
- Trigger: パーティクルレンダラー（Particle System Renderer）のAlignment設定時

## Agent questions
- Render Alignmentが`View`になっているか？ 誤って`World`や意図しない軸制約になっていないか？

## Suggested actions
- 空中を舞うパーティクルのアライメントを`Camera/View`に統一する。
- 地面設置型エフェクトについて、カメラ角が変化しても破綻しないようメッシュプロジェクション（Decal）への変更を提案する。

## Review criteria
- カメラをあらゆる角度（360度）に回してもエフェクトの厚み・形状が維持されること。

## Anti-patterns
- トップダウン（見下ろし）視点のカメラが存在するシーンで、地面から立ち上がる炎にY軸ビルボードを適用し、真上から見たときに紙のように消える現象。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 固定アングルカメラの2.5Dゲーム（カメラ回転が存在しないため、大胆な板ポリゴン配置が可能）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
