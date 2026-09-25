---
id: spec-004
title: "多層的ヒットストップ制御（微振動・判定保護・非対称性）"
candidate_id: "SPEC-004"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: camera-and-effects
---

# 多層的ヒットストップ制御（微振動・判定保護・非対称性）

## Summary
ヒットストップは単なる静止ではなく、与ダメージ側／被ダメージ側の非対称微振動、実判定の固定、ポーズ補間、攻撃威力係数、カメラ距離連動を複合適用せよ。

## SOURCE
スマブラSPの8つの仕様：①やられた側を大きくブレさせ、攻撃側は小さくブレる。②やられ判定（Hurtbox）はブレさせず見た目だけブレる。③地上では横振動のみ（地面めり込み防止）、空中では全方向振動。④振幅は徐々に収束。⑤攻撃力比例＋技ごとの係数制御。⑥数フレームかけてやられポーズへモーションブレンド。⑦剣攻撃など攻撃側がヒットストップ中も微小速度で進む。⑧カメラが引いているときは振幅を大きくする。

## GENERALIZED
ヒットストップは単なる静止ではなく、与ダメージ側／被ダメージ側の非対称微振動、実判定の固定、ポーズ補間、攻撃威力係数、カメラ距離連動を複合適用せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
単なるオブジェクト停止だけでは手触りが硬すぎたり、ヒット中に当たり判定がズレてコンボが外れる等の不具合・違和感を生むため。

## Use with context
- Domains: Fighting, Action, Beat 'em up
- Phases: Combat Mechanics Deep-dive, Polishing
- Trigger: 格闘・アクションゲームの打撃ヒット処理の設計・実装時

## Agent questions
- 喰らい側のメッシュ振動に伴ってHurtboxまで移動し、次弾がすり抜けるバグが起きていないか？
- 地上ヒット時に垂直振動して足が地面にめり込んでいないか？
- 強攻撃と弱攻撃でヒットストップ時間および振動幅が適切にスケーリングされているか？
- 遠景カメラ時に振動演出が小さすぎて視認不能になっていないか？

## Suggested actions
- レンダリング用座標オフセット（Shake Offset）とコリジョン用座標を分離する。
- 接地判定がある場合はShake OffsetのY軸成分を0にクランプする。
- ヒットストップ期間中、攻撃側のモーションを完全に0にせず、微量（1F未満相当）進めるオプションフラグを用意する。
- カメラのズーム倍率に反比例させて振動幅をスケールさせる係数を乗算する。

## Review criteria
- 打撃ヒット時に見た目が激しく揺れつつも、追撃の判定が狂わず、地面へのめり込みが発生しないこと。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
