---
id: fx-002-character-occlusion-control
title: "エフェクトによるキャラクターの完全遮蔽を防止する"
candidate_id: "FX-002-CHARACTER-OCCLUSION-CONTROL"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: controls-and-response
---

# エフェクトによるキャラクターの完全遮蔽を防止する

## Summary
派手なエフェクトであってもプレイヤーキャラクターや敵の主要ポーズを覆い隠してはならず、手前表示や半透明化・抜きの形状で視認性を保て。

## SOURCE
2Dでは表示優先度でキャラを前に出せば解決するが、3Dで無理やりキャラを最前面にすると視差矛盾が起きる。スマブラSPではエフェクトメッシュの前後高さを変えたり中央を抜くことでキャラを見せている。

## GENERALIZED
派手なエフェクトであってもプレイヤーキャラクターや敵の主要ポーズを覆い隠してはならず、手前表示や半透明化・抜きの形状で視認性を保て。

## AGENT
プレイヤーが自身や敵の硬直・リアクションフレームを視覚認識できることは対戦・アクションの入力判定において必須要件である。

## Why it matters
キャラクターがエフェクトで隠れると、何のアクションを行っているか、どちらを向いているか、いつ行動可能になるかが判断不能になり、ゲームプレイの公平性と操作感が崩壊する。

## Use with context
- Domains: VFX Mesh Design, Visual Clarity, Action/Fighting Mechanics
- Phases: VFX Implementation, Animation Review
- Trigger: 大技や必殺技、広範囲攻撃のVFXメッシュをプレハブにバインドするとき

## Agent questions
- 技の全フレームにおいて、キャラクターのシルエット占有率がエフェクトによって0%になっていないか？

## Suggested actions
- キャラクターの中心座標からカメラ方向にレイを飛ばし、VFXの不透明ピクセルで遮蔽される割合を算出する。
- 遮蔽率が閾値（例: 70%以上）を超える場合、メッシュの手前頂点を押し下げるか、中央アルファマスクを適用する。

## Review criteria
- 技の予兆〜発生〜フォロースルー全域でキャラクターの体勢が明瞭に視認できること。

## Anti-patterns
- 球状の爆炎や巨大なテクスチャをキャラクターの原点にそのまま重ねてキャラを完全に消失させる。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 演出上、キャラクターが完全に消失・テレポート・変身する瞬間の数フレーム。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
