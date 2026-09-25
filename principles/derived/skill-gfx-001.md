---
id: skill-gfx-001
title: "環境光・光の反射による絵作り（素材ではなく光を描く）"
candidate_id: "SKILL-GFX-001"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 環境光・光の反射による絵作り（素材ではなく光を描く）

## Summary
素材の固有色（リンゴ＝赤、葉＝緑）を塗るのではなく、光源の明暗、色相差、空気感（フォグ）などの『反射光』を描いて立体感と奥行きを生み出す。

## SOURCE
【明示】素材自体の色（赤、青）を描くのではなく反射する光を描く。木を描く場合、幹＝茶、葉＝緑のテクスチャを貼るだけでは不十分。光の差し込み、群体としての明暗、色相のズレ（落差）、空気感（フォグ）を意識して描くことで、処理を重くせずに奥行きを表現できる。

## GENERALIZED
【一般化】アセット単位のローカルカラーにとらわれず、グローバルなライティング環境（日光の方向、天空光、バウンス光、大気散乱）をサーフェス表現に織り込むことで、ローコストかつリッチな画面を構築する。

## AGENT
【補足】PBR（物理ベースレンダリング）環境であっても、ディフューズ/アルベドテクスチャに過度な陰影を焼き込むアンチパターンを防ぎ、シェーダー側の環境光計算とテクスチャのトーン設計を一致させること。

## Why it matters


## Use with context
- Domains: 2Dグラフィック, 3D背景モデリング, テクスチャ作成, シェーダー設計
- Phases: アセット制作, ライティング調整, グラフィックレビュー
- Trigger: 背景アセットのテクスチャ作成時、またはステージのライティング・見た目レビュー時

## Agent questions
- このアセットは単体で完結した塗りになっていないか？シーン全体の主光源・環境光と馴染んでいるか？
- 木々や建造物が並んだ際、群体としての陰影のグラデーションが形成されているか？

## Suggested actions
- マテリアルのアルベドマップを確認し、環境光や大気散乱を考慮した色相グラデーションの追加を提案する。
- 背景アセットの遠近インデックスに応じたフォグ/彩度減衰パラメータを設定する。

## Review criteria
- 並べられたオブジェクト群が単一の平坦な壁に見えず、自然な前後関係と立体感を持っていること。

## Anti-patterns
- 切り抜いた素材（木や岩）をそのまま並べるだけで、環境光や照り返しが一切反映されていない。
- すべてのオブジェクトが同一のコントラストと彩度を持ち、画面全体の奥行きが喪失している。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
