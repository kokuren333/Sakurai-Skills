---
id: fx-001-additive-blending-contrast
title: "色加算だけに頼らず、ベタ・暗色を混在させてメリハリを作る"
candidate_id: "FX-001-ADDITIVE-BLENDING-CONTRAST"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# 色加算だけに頼らず、ベタ・暗色を混在させてメリハリを作る

## Summary
発光加算エフェクトは単体多用を避け、不透明なベタ塗りや暗色要素を混在させて背景明度に関わらず輪郭と手応えを維持せよ。

## SOURCE
色加算を重ねると白に近づき輪郭が曖昧になる。暗い背景でないと目立たなくなる。スマブラSPではパリッとしたアニメ調を目指し、ベタ塗りや暗い色を混ぜている。

## GENERALIZED
発光加算エフェクトは単体多用を避け、不透明なベタ塗りや暗色要素を混在させて背景明度に関わらず輪郭と手応えを維持せよ。

## AGENT
シェーダーレベルで加算ブレンドのみのパーティクルマテリアルを禁止し、アルファテスト/通常合成と加算合成の多層レイヤー構造を標準パイプラインとする。

## Why it matters
ゲーム画面は常に暗い背景とは限らず、加算合成だけのエフェクトは砂漠や昼間ステージで見えなくなる。また中心が白飛びして輪郭がぼやけると、プレイヤーが『何が当たったか』を即座に脳内処理できず、打撃感や快感が著しく損なわれる。

## Use with context
- Domains: VFX, Rendering, Combat Feedback
- Phases: VFX Design, Shader Implementation, Art Review
- Trigger: 戦闘・攻撃・爆発などのVFXテクスチャやシェーダーを作成・調整するとき

## Agent questions
- 白背景（RGB: 1.0, 1.0, 1.0）上に配置した際、エフェクトのシルエットが視認できるか？
- ブレンドモードがAdditiveのみのレイヤーだけで構成されていないか？

## Suggested actions
- VFXプレビュー環境に『完全な黒』『完全な白』『中明度のチェック柄』の3種背景を自動設定して視認テストを行う。
- 加算レイヤーの直下に暗色または不透明なリム/コアテクスチャを追加する修正パッチを生成する。

## Review criteria
- 明るい背景でも爆発や斬撃の輪郭・ベクターが明瞭に読み取れること。

## Anti-patterns
- 柔らかなグラデーションテクスチャの加算ブレンドのみを大量配置して誤魔化す設計。
- 暗い背景専用で調整され、昼間ステージに持ち込むと消滅するエフェクト。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 環境光・フォグ・微弱な大気パーティクルなど、プレイヤーの注視を引く必要のない環境エフェクト。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
