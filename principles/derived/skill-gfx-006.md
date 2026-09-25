---
id: skill-gfx-006
title: "奇数ドット幅による正中線確保とドット絵の質感表現"
candidate_id: "SKILL-GFX-006"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 奇数ドット幅による正中線確保とドット絵の質感表現

## Summary
低解像度グリッドで円や左右対称物を描く際は、偶数（16×16）ではなく奇数（15×15）を選択して中心線（正中線）を確保し、歪みのない綺麗な形状を作る。

## SOURCE
【明示】スプライトは16×16がよく使われるが、その中に円を描くときは16ドットより15ドットの方が正円に近くて綺麗になる。正中線（1ドットの中心軸）が取れるため。クラフトゲーム（マインクラフト等）で建築する際も奇数幅が便利。また白黒2階調でも、縁取り、ハイライト抜き、メッシュ（網掛け）、角落とし、照り返しを駆使することで泡、鉄球、ガラスなどの多彩な質感を表現できる。

## GENERALIZED
【一般化】グリッドベースのモデリングやピクセルアートにおいて、中心軸を1ピクセルで定義できる奇数解像度は、対称構造の美しさと視認性を担保する。

## AGENT
【補足】UIアイコンやピクセルアートフォントの作成時、偶数サイズで中央配置しようとすると線がぼやける（アンチエイリアスで2pxに跨る）現象への対策としても有効。

## Why it matters


## Use with context
- Domains: ドット絵（ピクセルアート）, UIアイコン制作, ボクセル建築, 低解像度レンダリング
- Phases: スプライト制作, UIアセット仕様設計
- Trigger: ピクセルアート生成、UIアイコン作成、ボクセルマップ生成アルゴリズムの実装時

## Agent questions
- 対称性が必要なシンボルの解像度は奇数になっているか？

## Suggested actions
- アイコンのキャンバスサイズまたは描画領域を中心軸が取れる奇数幅に補正する。

## Review criteria
- 中心線に対して左右均等なピクセル配置がなされ、斜め線の階段（ジャギー）が規則的であること。

## Anti-patterns
- 16×16のスプライト枠いっぱいに円を描き、中心軸が取れずに角張った歪な楕円にしてしまう。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
