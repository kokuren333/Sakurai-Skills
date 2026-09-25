---
id: spec-018
title: "回転軸・重心のズラしによる『生きた手応え』の創出"
candidate_id: "SPEC-018"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: feedback-and-game-feel
---

# 回転軸・重心のズラしによる『生きた手応え』の創出

## Summary
飛翔物や回転攻撃のアニメーション・物理回転軸を幾何学的な中心から意図的にズラし、不安定で生き生きとした表情と質量感を与えよ。

## SOURCE
『星のカービィ』のシャッツォの砲弾（ヘロヘロ弾）はスプライト位置を6Fで1周ズラして存在感を強調。『スマブラSP』のリンクの爆弾投げ時の回転軸ズラし。ホムラの『ブレイズエンド』で剣の回転軸をグリップ位置から刀身側へズラす修正指示。

## GENERALIZED
飛翔物や回転攻撃のアニメーション・物理回転軸を幾何学的な中心から意図的にズラし、不安定で生き生きとした表情と質量感を与えよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
『動かないものに魂を入れる』というアニメーションの語源通り、数ピクセル・微小な軸オフセットの工夫が記号的なCGに生きた手触りを与えるため。

## Use with context
- Domains: 2D/3D Action, Animation, VFX Design
- Phases: Animation Implementation, Visual Polishing
- Trigger: 飛翔物（弾、投擲アイテム）の実装、武器の回転攻撃モーション作成時

## Agent questions
- 弾やアイテムが定規で引いたように無機質に直進・回転していないか？
- 回転する武器の中心がグリップに固定され、先端の質量感が死んでいないか？

## Suggested actions
- オブジェクトのPivot（回転中心）をバウンディングボックスの中心から意図的にオフセットさせる。
- 2Dスプライトのアニメーションにおいて、数フレーム周期で描画座標を微小に回転オフセットさせるオフセットテーブルを適用する。

## Review criteria
- 飛翔物や武器が回転・移動する際、無機質な機械運動ではなく、重量や風圧を感じさせる有機的な軌道に見えるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
