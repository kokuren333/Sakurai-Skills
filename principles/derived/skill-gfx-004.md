---
id: skill-gfx-004
title: "スケール感の整合性管理（ミニチュア化の防止）"
candidate_id: "SKILL-GFX-004"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# スケール感の整合性管理（ミニチュア化の防止）

## Summary
巨大な物体がオモチャに見えないよう、テクスチャの密度・ムラ、スペキュラ（ツヤ感）の絞り込み、法線マップの凹凸、退色（彩度・空気遠近）を現物のスケールに適合させる。

## SOURCE
【明示】ステージにある大きなものが小さく見えてしまうことが多い。実物のバイクとプラモデルは同じ形でも見え方が違う。スケールモデルは彩度が高く、スペキュラが強く大きく、環境光の影響を受けにくく、素材が単調。巨大なものを表現するなら、彩度を淡めにし、スペキュラの面積や強さを絞り、法線マップのスケールを合わせ、鉄板などに色相差やウェザリング（汚れ）を入れる。

## GENERALIZED
【一般化】人間の脳はハイライトの広がり（スペキュラハイライトのサイズ）やテクスチャの繰り返し密度から物体の絶対サイズを推定する。物理スケールを拡大するだけでなく、シェーディングパラメータもスケールに応じて再調整しなければならない。

## AGENT
【補足】被写界深度（DoF）を不用意に入れるとチルトシフト効果（ミニチュア写真効果）が発生し、巨大スケール感が完全に崩壊する点に注意（F12でも詳述）。

## Why it matters


## Use with context
- Domains: 3D背景, 巨大メカ・ボス制作, シェーダー/マテリアル調整, テクスチャ作成
- Phases: マテリアル設定, ポストプロセス調整, アートレビュー
- Trigger: 大型建造物・巨大ボス・広大ステージのマテリアル作成、またはスケール感の違和感指摘時

## Agent questions
- マテリアルのスペキュラ/ラフネス設定は実世界の物理スケールに合致しているか？
- タイリングテクスチャの解像度感が小さすぎて物体全体を矮小化させていないか？

## Suggested actions
- 巨大物体のマテリアルにおいて、ベースカラーの彩度を5〜15%落とし、微細な色相ムラマップを乗算する。
- 法線マップの深度およびスペキュラ強度を抑制し、チルトシフト的なDoF効果をカットする。

## Review criteria
- 画面上で静止画・動画として見た際に、設定通りの巨大感・重厚感が伝わってくること。

## Anti-patterns
- 高彩度・強スペキュラのまま巨大戦艦をレンダリングし、食玩のプラスチックフィギュアのように見せてしまう。
- 均一なグレーの金属板をそのまま貼り、スケール感を示すディテールが何もない。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
