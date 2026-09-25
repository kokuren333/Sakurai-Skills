---
id: sound-001
title: "ゲームの攻防速度・状況に応じたテンポ（BPM）設計"
candidate_id: "SOUND-001"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# ゲームの攻防速度・状況に応じたテンポ（BPM）設計

## Summary
BGMのテンポは単体の音楽性ではなく、ゲームの攻防速度や場面の心理的リズムに合わせて決定する。

## SOURCE
テンポ（BPM）は拍をどのくらいの速さで打つかの指標。ゲーム内容によって合うテンポ感と合わないテンポ感がある。対戦ゲームの攻防速度から適切なテンポは異なり、場面が変われば適切なテンポ感も異なる。『ドラクエ1』では地下深く潜るほどBGMのテンポが落ちる仕掛けがある。

## GENERALIZED
BGMはプレイヤーの心拍数や操作リズム（インプット頻度）と同調する。高速アクションに対戦向けアレンジをする場合、BPM130〜170（稀に200）程度まで引き上げ、緊張感と操作テンポを誘導する。

## AGENT
ゲームエンジン側でシーケンサーやDSPクロックと連携し、深度や危険度パラメータに応じてBPM/再生速度を動的変調する設計パターンに直結する。

## Why it matters
ゲームプレイの速度感とBGMのテンポが乖離していると、操作入力に対する認知摩擦が生じ、爽快感や没入感が阻害されるため。

## Use with context
- Domains: BGM設計, 戦闘演出, 動的オーディオシステム
- Phases: プロトタイプ, サウンド発注, レベルデザイン
- Trigger: 新ステージ・戦闘・カットシーンのBGM選定・発注・実装時

## Agent questions
- ゲームの1秒あたりの操作頻度や攻防サイクルに対してBGMのBPMが速すぎる/遅すぎないか？
- プレイヤーの感情曲線（探索・緊迫・達成）の変化に合わせてテンポが変化しているか？

## Suggested actions
- ゲームプレイの攻防速度（平均アクション完了時間）を計測し、対応するBPM範囲（通常対戦なら130-170等）を提案する。
- シチュエーション遷移（例：ダンジョン深度、残り体力）に応じたテンポ変調トリガーを実装・設定する。

## Review criteria
- 対戦・アクション場面でBGMがプレイの操作テンポを牽引できているか
- 場面変化による心理的緊張感の増減がテンポ感と一致しているか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
