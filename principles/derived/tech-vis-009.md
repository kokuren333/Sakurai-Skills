---
id: tech-vis-009
title: "パーツ別透過・レイヤー個別トグルによるモーション・視覚要素の検証機能"
candidate_id: "TECH-VIS-009"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: clarity-and-readability
---

# パーツ別透過・レイヤー個別トグルによるモーション・視覚要素の検証機能

## Summary
開発モードにおいて、モデルの特定部位（マント・装飾・武器）の個別透過/消去、および画面要素（UI・背景・エフェクト・影）の個別ON/OFF機能を実装せよ。

## SOURCE
『スマブラSP』では、開発モードでファイターのモデルの一部を指定して半透明または消去できるようにした（例: 全身、弓のみ、盾・剣以外）。マント付きキャラ（マルス等）はマントが邪魔で背後の手足のポーズが見えないことがあるが、マントを透過することでモーションの手付けやポーズを正確に確認できる。さらに、UI、1P/2P、武器、エフェクト、ステージ、影、ポストエフェクトなどを要素ごとに個別ON/OFFできる機能も不可欠であり、公式の「きょうの一枚」写真撮影にも活用された。

## GENERALIZED
複合的なレンダリング結果から特定の干渉要素（装飾物、エフェクト、UIなど）を一時的に除外し、検証対象の骨格・ポーズ・判定のみを純粋に評価できるビジュアライザーを提供する。

## AGENT
グラフィックスパイプラインおよびアニメーション検証環境におけるレンダーレイヤートグル機能。

## Why it matters
エフェクトや装飾品（マント、大型武器）が邪魔でキャラクター本体の正確なモーションや当たり判定が見えないと、アニメーションの違和感やすっぽ抜けバグの原因特定が著しく遅れる。

## Use with context
- Domains: グラフィックスパイプライン, アニメーション検証, デバッグビジュアライザー
- Phases: アニメーション制作, エフェクト制作, 描画デバッグ
- Trigger: アニメーション検証ツールの作成、キャラクター描画パイプラインの実装時

## Agent questions
- モデルの特定パーツを非表示または透過してモーションを確認する手段があるか？
- エフェクトやUIを個別非表示にして描画乱れを切り分けられるか？

## Suggested actions
- メッシュレンダラーのパーツ別表示トグル（全身/武器/装飾）のデバッグ用フラグを実装する。
- 各レンダーパス（UI, VFX, PostProcess）のバイパス機能をデバッグUIにバインドする。

## Review criteria
- 特定部位の透過・消去機能が提供されていること
- 画面要素の個別ON/OFF切り替えが可能であること

## Anti-patterns
- モーションの確認をするために、DCCツール（Maya/Blender）に戻ってマントメッシュを削除して再エクスポートするような非効率な運用。
- エフェクトの眩しさや派手さでごまかされ、根本的なモーションの硬直や破綻に気づけない状態を放置する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
