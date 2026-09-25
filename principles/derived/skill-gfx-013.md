---
id: skill-gfx-013
title: "シルエット優先のキャラクターデザイン（キャラ立ちの極意）"
candidate_id: "SKILL-GFX-013"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# シルエット優先のキャラクターデザイン（キャラ立ちの極意）

## Summary
テクスチャや色をすべて削ぎ落とし『真っ黒なシルエット』にした時でも、誰であるか、どんなポーズかが一瞬で識別できるよう、頭部・手足・小物の比率を大胆に誇張（デフォルメ）する。

## SOURCE
【明示】Miiファイターのナコルル衣装の初期モデルは『KOF XIV』のリアル頭身をベースにしていたが、これだとキャラが立たない。ナコルルといえば1993年の『サムライスピリッツ』のデフォルメとメリハリの効いたフォルム（大きな頭部、リボン、グローブ、袴の裾のボリューム）。これを元にリテイクし、シルエットが映えるようにした。真っ黒にしたときでも誇張が効いたフォルムにすることが最重要。ぐちょぐちょして判らないものや他キャラと区別がつかないものは二流。

## GENERALIZED
【一般化】人間は詳細なディテールよりも先に全体の外輪線（シルエット）を認識して対象を識別する。キャラクターの記号（アイコン）となる部位を特定し、その比率を極大化せよ。

## AGENT
【補足】ポージングにおいても、手足が胴体に重なってシルエットが団子状になるのを避け、空間を空けて外側に突き出す『ポージングの黄金律』を適用する。

## Why it matters


## Use with context
- Domains: キャラクターデザイン, 3Dモデリング, ポージング, アニメーション
- Phases: キャラクターデザイン, ベースメッシュ制作, モーション制作
- Trigger: キャラクターのベースメッシュ作成時、キーポーズ設定時、シルエット監査時

## Agent questions
- シルエット表示にした状態で、他キャラクターと100%誤認なく区別できるか？
- キーポーズのアクション意図が外輪線だけで読み取れるか？

## Suggested actions
- モデルのレンダリングモードをシルエット（マスク）に切り替え、輪郭の複雑度と識別性をスコアリングする。
- 主要なキーポーズにおいて、手足の端点を胴体バウンディングボックスの外側へ展開するオフセットを提案する。

## Review criteria
- 縮小表示・高速移動・逆光環境であっても、キャラクターの識別と動作が明瞭に伝わること。

## Anti-patterns
- 解剖学的に正しいリアルなプロポーションをそのまま縮小し、縮小表示した際に細身すぎて何者か分からなくなる。
- 手足を身体の前面に縮こまらせ、黒塗りにするとただの塊に見えるポーズを放置する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
