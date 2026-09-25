---
id: fx-010-particle-budget-conservation
title: "パーティクルは寿命短縮・集約・タイミング分散・大振り化で徹底節約せよ"
candidate_id: "FX-010-PARTICLE-BUDGET-CONSERVATION"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# パーティクルは寿命短縮・集約・タイミング分散・大振り化で徹底節約せよ

## Summary
パーティクルの描画負荷を抑えるため、『寿命を短くして初速を上げる』『1枚の板に複数を描く』『出現タイミングをズラす』『少し大振りにする』の4大原則で節約せよ。

## SOURCE
パーティクルの節約術4選：①寿命を短く（速度を上げてカバー）、②複数をひとつのパーティクルに（1枚の板に複数の絵）、③タイミングをズラす（位置もズラして重ねない）、④少し大振りにする（大きめにして有効活用）。初代カービィの星は毎フレーム手配置の座標データのみで動作させていた。

## GENERALIZED
パーティクルの描画負荷を抑えるため、『寿命を短くして初速を上げる』『1枚の板に複数を描く』『出現タイミングをズラす』『少し大振りにする』の4大原則で節約せよ。

## AGENT
特に乱戦時や画面内に4人以上のプレイヤーが同時に技を出した際の最悪ケース（Worst-case Frame Budget）を基準にエフェクトをアセンブルする。

## Why it matters
ゲームプレイが最も白熱する『乱戦時・必殺技重複時』にパーティクル過多で処理落ち（フレームレート低下）が発生すると、入力遅延が生じアクションゲームとしての致命傷になる。

## Use with context
- Domains: Optimization, VFX Architecture, Performance Tuning
- Phases: VFX Creation, Performance Profiling, Optimization
- Trigger: Particle Systemのプロファイリング時、または新規エフェクト作成時のLOD設計時

## Agent questions
- Max Particlesが過剰（例: > 100）になっていないか？
- Overdrawビューモードで赤〜白に激しく光っている重なり領域がないか？

## Suggested actions
- エフェクトの`Lifetime`と`Emission Count`を削減し、サイズスケールと初速カーブを引き上げるプロファイル修正案を出力する。
- 連続発生するパーティクルの出現タイミングにジッター（微小なオフセット遅延）を自動挿入する。

## Review criteria
- 見た目の密度感・華やかさを損なわずに、Overdraw面積とパーティクル総数が50%以上削減されていること。

## Anti-patterns
- 見えないほど微細なパーティクルを数千個放出してGPUのピクセルシェーダー/ラスタライザを窒息させる。
- 同一フレーム・同一座標にまったく同じテクスチャのパーティクルを多重生成する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: ハイエンドPC専用のシミュレーションデモや、GPUパーティクル（コンピュートシェーダー）で数百万個描画することが前提のタイトル。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
