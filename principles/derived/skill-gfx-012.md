---
id: skill-gfx-012
title: "漫画的誇張（感情・可読性優先の嘘表現）の許容"
candidate_id: "SKILL-GFX-012"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 漫画的誇張（感情・可読性優先の嘘表現）の許容

## Summary
3Dの物理的・解剖学的な正確さに固執せず、感情や可読性をダイレクトに伝える漫画的・アニメ的表現（横口、メガネ越しに見える目、断面の割り切り）を意図的に導入する。

## SOURCE
【明示】漫画やアニメでは、メガネの横フレームを抜いて目を描いたり、横顔のときに口が横に寄っていたりする。自然とは言いがたいが、アゴを動かさず口の開閉がわかりやすいため非常に有効。『ロックマンDASH』や『ソニック』でも横顔に口を寄せる表現がなされている。『スマブラSP』のカービィやプリンの口のモデルも、解剖学的に正しい凹み（上唇と下唇のリアルな断面）ではなく、漫画的な開口形状に修正指示を出した。リアルでないからと漫画的表現を避けるべきではない。

## GENERALIZED
【一般化】ゲームはシミュレーターではなくエンターテインメントである。画面上での『伝わりやすさ』『キャラクターの魅力』のためなら、3D空間における局所的な幾何学的矛盾（嘘）を積極的に肯定する。

## AGENT
【補足】フェイシャルリグにおいて、カメラアングルに応じて口のボーン位置やメッシュを動的に移動させるシェーダー/リギング構造を設計する。

## Why it matters


## Use with context
- Domains: フェイシャルアニメーション, 3Dモデリング, キャラクタートゥーンシェーダー, 演出
- Phases: キャラクターモデリング, リギング, アニメーション作成
- Trigger: デフォルメキャラクターのリギング、フェイシャル作成、アニメーションレビュー時

## Agent questions
- カメラ角度に対してキャラクターの表情・開口が最も魅力的に見えているか？
- 物理的整合性よりも視覚的伝達力が優先されているか？

## Suggested actions
- フェイシャルアニメーションに『Camera-Facing Mouth（カメラ追従口）』シェイプキーを追加する。
- 口腔モデルの不要なリアル凹凸を平滑化し、シンプルな漫画的カーブに修正する。

## Review criteria
- 遠目や激しいアクション中でも、キャラクターの喜怒哀楽と発声が即座に判読できること。

## Anti-patterns
- デフォルメキャラクターの口の中にリアルな歯列や扁桃腺を作り込み、不気味の谷に落とし込む。
- 横顔で口が完全に奥に隠れ、ボイスが再生されているのに無表情に見える状態を放置する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
