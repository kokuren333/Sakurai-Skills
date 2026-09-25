---
id: fx-009-flashing-contrast-balancing
title: "フラッシングは明暗の混在とカメラ距離に応じた強度スケーリングを行え"
candidate_id: "FX-009-FLASHING-CONTRAST-BALANCING"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: camera-and-effects
---

# フラッシングは明暗の混在とカメラ距離に応じた強度スケーリングを行え

## Summary
画面やキャラを点滅させるフラッシングは、白一色を避け影や暗色を内包させ、カメラ距離に応じてピカピカ面積を制御せよ。

## SOURCE
フラッシング（画面やキャラを光らせる）。最近は安全レギュレーションが厳しい。白色加算のみだとコントラストが消えてのっぺりし、白背景で見えない。スマブラSPでは『加算色＋影』を入れて明暗を内包。さらにカメラ距離によってフラッシングの強さを変えている（近いと弱く、遠いと強く）。

## GENERALIZED
画面やキャラを点滅させるフラッシングは、白一色を避け影や暗色を内包させ、カメラ距離に応じてピカピカ面積を制御せよ。

## AGENT
アクセシビリティ基準（Photosensitive Epilepsy Analysis Tool: PEAT）への準拠と、打撃・無敵の手応え表現を両立するための現代的標準解。

## Why it matters
白色ベタ塗りのフラッシングはキャラクターの立体感を殺してチープに見せるだけでなく、高輝度背景で被弾が見失われ、至近距離カメラでは光過敏性健康被害を引き起こす危険がある。

## Use with context
- Domains: Shader Implementation, Combat Feedback, Accessibility/Safety
- Phases: Shader Authoring, Compliance Check
- Trigger: Damage Flash（被弾時白点滅）シェーダーまたは無敵ステータスエフェクトの実装時

## Agent questions
- フラッシュ処理でテクスチャのシャドウ情報が完全に上書き破棄されていないか？
- カメラ距離（Screen Space Area）に基づくIntensity減衰ロジックが組み込まれているか？

## Suggested actions
- シェーダーの出力カラー計算を `Lerp(OriginalColor, FlashColor, Alpha)` から `OriginalColor * ShadowFactor + FlashColor * RimFactor` のような明暗保持構造へリファクタリングする。
- 光過敏性規制（3Hzを超える全画面周期点滅の排除）バリデーションを走らせる。

## Review criteria
- 点滅中もキャラクターのポーズと立体感が崩れず、かつ安全基準を満たしていること。

## Anti-patterns
- 全画面またはキャラクターマテリアルを純白（#FFFFFF）で高速矩形波点滅させる前時代的実装。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 意図的なレトロゲーム再現モード（ただし現行プラットフォームの点滅規制チェックをパスする必要がある）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
