---
id: skill-gfx-010
title: "最終出力（ポストプロセス・フレームバッファ統合）による絵作り"
candidate_id: "SKILL-GFX-010"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 最終出力（ポストプロセス・フレームバッファ統合）による絵作り

## Summary
個別モデルの品質だけでなく、フレームバッファ展開後の後処理（ライティング統合、カラーグレーディング、照り返しブレンド）を的確にコーディネートして画面全体のクオリティを引き上げる。

## SOURCE
【明示】ポリゴンキャラクター単体が綺麗であればいい時代は終わっており、最終的な出力（絵作り）が極めて重要。ゲーム機が生成する絵はフレームバッファに格納され、シェーダーやレンダリングの後処理を経てテレビ画面に転送される。『スマブラDX』と『スマブラSP』を比較すると、SPでは地面からの照り返しによる色味の混ざり合いや環境光の統合がなされ、格段にリッチになっている。映像の最終出力を統括・コントロールするコーディネーターの存在がクオリティを劇的に高める。

## GENERALIZED
【一般化】アセット単位の完成度の総和＝画面の完成度ではない。コンポジット（合成・後処理）段階でのトーンマッピング、アンビエントオクルージョン、スクリーンスペースリフレクション等の統合処理が全体の調和を決定づける。

## AGENT
【補足】レンダリングパイプライン（URP/HDRP/Unreal Engine PostProcess）におけるLUT（Color Grading）、ブルーム、トーンマッパーの選定と最適化。

## Why it matters


## Use with context
- Domains: レンダリングパイプライン, ポストプロセス, アートディレクション, テクニカルアート
- Phases: 描画エンジン構築, 最終ビジュアル調整, ポリッシュ
- Trigger: レンダリングパイプライン設定時、最終ルックデブ（Look Development）調整時

## Agent questions
- キャラクターと背景の間に自然な間接光・照り返しが存在しているか？
- ポストプロセスチェーンの描画負荷が許容範囲内に収まっているか？

## Suggested actions
- ポストプロセススタックに適切なTonemapping（ACES等）とColor Adjustmentsを挿入する。
- キャラクターシェーダーにGround Color（下からの照り返し光）パラメータを追加し、地面の色を反映させる。

## Review criteria
- 画面内の全要素が同一の空気・光の場に存在しているという一体感が得られていること。

## Anti-patterns
- モデルと背景を別々に高品質化したが、後処理での馴染ませを行わないため合成写真のようにバラバラに見える（『スマブラDX』的な単調な発色）。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
