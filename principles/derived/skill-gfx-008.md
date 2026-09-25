---
id: skill-gfx-008
title: "存在感の創出（絵とゲーム性の相互作用）"
candidate_id: "SKILL-GFX-008"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 存在感の創出（絵とゲーム性の相互作用）

## Summary
CGモデル自体は質量も重力もない単なる中空ポリゴン（ハリボテ）に過ぎないことを認識し、ゲーム性（死の緊張感、探索、操作感）や音・演出との掛け算によってプレイヤーの脳内に『確固たる存在感』を結実させる。

## SOURCE
【明示】『ゲームの面白さに映像の綺麗さは関係ない』と言われるが、映像をゲーム性が引き立てることは明らかにある。ゲームの背景は身も蓋もない言い方をすれば単なるポリゴンで、判定を入れなければすり抜けるハリボテ。だが『ダークソウル』のように死の危険があるゲームでは、プレイヤーが周囲を極限まで警戒して見るため、背景の壁や小石ひとつの存在感が劇的に引き立つ。逆に高速で駆け抜けるゲームでは見え方が変わる。ゲーム性、音、プログラム、パラメータが合わさって初めて質量のないCGに存在感が宿る。

## GENERALIZED
【一般化】グラフィックの価値はアセット単体のポリゴン数やテクスチャ解像度では決まらない。プレイヤーの入力、ゲームルール（リスク・リワード）、サウンド、物理挙動と同期したときに初めて心理的なリアリティ（存在感）が成立する。

## AGENT
【補足】美しいグラフィックを作ることだけを目的にせず、そのグラフィックがゲームプレイ（プレイヤーの行動・感情）とどう連動するかを設計する。

## Why it matters


## Use with context
- Domains: ゲームデザイン, アートディレクション, 環境演出, レベルデザイン
- Phases: ゲームコンセプト設計, レベルデザイン, 総合演出
- Trigger: レベルデザインの策定、環境アセットの配置、イマーシブ感（没入感）の改善タスク時

## Agent questions
- この空間でプレイヤーは何を感じ、何を探しているか？
- ビジュアルのディテール密度はプレイヤーの移動速度・滞在時間に見合っているか？

## Suggested actions
- オブジェクト接触時のSE・VFXトリガーとコリジョン物理パラメータの整合性を検証する。
- プレイヤーの注視時間に応じたアセットの詳細度・ライティング強度を調整する。

## Review criteria
- グラフィックが単なる背景画にとどまらず、プレイヤーの行動（探索、回避、進行）を誘発していること。

## Anti-patterns
- 超高精細な背景を作ったが、ゲームの移動速度が速すぎて誰も気づかずに素通りする。
- 重厚な石の壁に見えるのに、接触したときの効果音がペラペラの金属音や無音になっている。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
