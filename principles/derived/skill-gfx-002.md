---
id: skill-gfx-002
title: "接触判定領域の明示的強調と非判定領域の抑止"
candidate_id: "SKILL-GFX-002"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: clarity-and-readability
---

# 接触判定領域の明示的強調と非判定領域の抑止

## Summary
プレイヤーが接触・着地できる判定面（床・壁・ガケ）を視覚的に最強調し、判定のない遠景・装飾はコントラストや彩度を落として誤認を防ぐ。

## SOURCE
【明示】接触判定を持つ部分を強調し、それ以外を強調しない。『スマブラ』はアクションゲームなので床の位置がわかることが最重要。3Dパースがつくと判定位置が曖昧になりやすい。遠景の絵作りに力を入れすぎて肝心の地形判定が目立たなくなると『地形が遠景に負ける』状態になる。当たり判定がある部分はハッキリ、遠景は目立ち度を下げる。

## GENERALIZED
【一般化】ゲームプレイの機能性（アフォーダンス）と美術的装飾が衝突した場合、常に機能性の視認性を優先（または両者が成立する極限のバランスを模索）する。

## AGENT
【補足】視覚的な境界線（テクスチャの端）と物理コライダー（Collision Mesh/Box）のズレをなくし、エッジにハイライトを入れるか輪郭線を調整して立脚面を浮き立たせる。

## Why it matters


## Use with context
- Domains: ステージ設計, レベルデザイン, 3D背景モデリング, ライティング
- Phases: プロトタイプ実装, ステージ美術監修, QA・視認性チェック
- Trigger: ステージのメッシュ作成、マテリアル適用、コリジョン設定、または視認性バグ報告時

## Agent questions
- コリジョンコライダーとメッシュの立脚可能面のエッジが一致しているか？
- 背景の露出やコントラストが前景のステージ床面を食っていないか？

## Suggested actions
- ステージ天面と側面の法線/ライティング差を検証し、上面のエッジコントラストを高める。
- 非判定の遠景オブジェクトに対し、被写界深度やフォグ、輝度クランプを適用して視覚優先度を下げる。

## Review criteria
- グレースケール表示や高速移動時でも、足場境界が即座に目視可能であること。

## Anti-patterns
- 乗れそうに見える背景オブジェクトがある（偽のアフォーダンス）。
- 装飾が過密で、実際のコライダーの境界線が見た目から判別できない。
- 背景を暗く落としすぎてゲーム画面全体の見栄えが著しく損なわれる（機能性至上主義による美観の崩壊）。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
