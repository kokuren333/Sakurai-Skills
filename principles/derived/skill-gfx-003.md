---
id: skill-gfx-003
title: "大事と小事の見分け（画面占有率と注視頻度によるリソース配分）"
candidate_id: "SKILL-GFX-003"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: clarity-and-readability
---

# 大事と小事の見分け（画面占有率と注視頻度によるリソース配分）

## Summary
ゲーム機の描画限界を前提とし、画面中央や操作対象など『よく見られ、占有率が高い箇所』に優先的にポリゴン・処理能力を注ぎ、見えないこだわりは削る。

## SOURCE
【明示】ゲーム機のパフォーマンスは低く、切り詰めないと実現できない。効果が高い領域（大事）と低い領域（小事）を見極める。『スマブラ』では画面中央付近やステージ上が大事で、画面外になりやすい台座下部は優先度が下がる。ファイターはアップ表示や素材利用があるため優遇する。インクリングのステージ遠景で走る車のタイヤが回転していたのは、見えないこだわりすぎて処理軽減を指示した。

## GENERALIZED
【一般化】ROI（費用対効果）の高いピクセルにリソースを集中させる。開発者の自己満足に陥る微細なディテール（見えない回転・裏面など）は容赦なくオミットする。

## AGENT
【補足】LOD（Level of Detail）の適切な距離設定、オクルージョンカリング、不要なボーンアニメーションの停止を含む最適化パイプラインの徹底。

## Why it matters


## Use with context
- Domains: 3Dモデリング, 最適化, アートディレクション, レンダリング
- Phases: アセット仕様策定, プロファイリング・最適化, アートレビュー
- Trigger: 3Dアセットのポリゴン/テクスチャバジェット策定時、またはFPS低下時のプロファイリング時

## Agent questions
- このアセットの通常プレイ時の画面占有率は何パーセントか？
- 視認できないボーン、裏面ポリゴン、アニメーションループが残っていないか？

## Suggested actions
- 画面占有率に応じたMipmap設定とLOD切り替え距離の再計算を実行する。
- 非注視領域の動的コンポーネント（Physics, Animator）を無効化する。

## Review criteria
- 60fps等の目標フレームレートを維持しつつ、主役となるキャラクターや主戦場の描画品質が最大化されていること。

## Anti-patterns
- プレイヤーが絶対に気づかない遠景の車のタイヤをボーンで正確に回転させる。
- 画面外に出ることが多いステージ底部に高密度なディテールを詰め込む。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
