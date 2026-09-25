---
id: fx-004-camera-screen-shake-design
title: "画面振動はカメラ移動と描画画像移動を使い分け、画角と距離で減衰させよ"
candidate_id: "FX-004-CAMERA-SCREEN-SHAKE-DESIGN"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: camera-and-effects
---

# 画面振動はカメラ移動と描画画像移動を使い分け、画角と距離で減衰させよ

## Summary
画面振動は衝撃演出に不可欠だが、3Dカメラ移動方式とポストプロセス画像移動方式の特性を理解し、カメラ距離・画角に応じたスケーリングを行え。

## SOURCE
画面振動の2方式（カメラ移動／描画後画像移動）。大中小微振動は単なるスケールではなくパターンを変える（弱は縦のみ、中は横も混ざる、等）。最初は強く次第に収束。カメラの寄り引きや画角（視野角）によって振動の大きさを変える必要がある。

## GENERALIZED
画面振動は衝撃演出に不可欠だが、3Dカメラ移動方式とポストプロセス画像移動方式の特性を理解し、カメラ距離・画角に応じたスケーリングを行え。

## AGENT
物理演算エンジン側の衝撃量（Impulse）とカメラ振動スクリプトを疎結合にし、演出用カーブアセット（Shake Profile）を通じて呼び出す設計が望ましい。

## Why it matters
画面振動が一切ないと、どれだけ重い攻撃を当ててもペチペチとした手応えのない感触になる。一方で、調整を誤るとカメラ近接時にプレイヤーが3D酔いを起こしたり、2D固定カメラで黒枠が画面端に露出して世界観を破壊する。

## Use with context
- Domains: Camera System, Combat Feedback, Game Feel
- Phases: Camera Architecture, Tuning & Polish
- Trigger: カメラシェイク機能の実装、または戦闘用ヒットリアクションの作成時

## Agent questions
- カメラのFocal Length/FOV変化に対してシェイク量が自動補正されているか？
- 振動の減衰が線形（Linear）ではなく、初速が最大で急激に収束するカーブになっているか？

## Suggested actions
- CameraShakeControllerに『FOV Compensator』スクリプトを注入する。
- テストシーンで最至近距離と最遠距離でのシェイク実行テストを自動キャプチャし、ピクセル移動量を比較検証する。

## Review criteria
- 至近距離でも画面が荒れ狂わず、かつ遠景でもヒットの重みが伝わること。

## Anti-patterns
- どの攻撃でも同じホワイトノイズ的なPerlin Noiseシェイクを振幅倍率だけで使い回す。
- カメラズームイン演出中に最大威力の画面振動をそのまま適用して画面が破綻する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: VRゲーム（前庭感覚との乖離で激しいVR酔いを引き起こすため、原則として頭部カメラの直接シェイクは禁止）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
