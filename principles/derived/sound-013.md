---
id: sound-013
title: "制約下での音響アーキテクチャ理解と創意工夫の最大化"
candidate_id: "SOUND-013"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# 制約下での音響アーキテクチャ理解と創意工夫の最大化

## Summary
ハードウェアの音源仕様（発音数、波形種別、メモリ容量）の限界を深く理解し、その制約を逆手に取った音響表現を設計する。

## SOURCE
ファミコンは矩形波2、三角波1、ノイズ1、DPCM1の計5音源。矩形波はデューティ比（12.5%, 25%, 50%, 75%）で音色を変え、三角波はベースに、ノイズは打撃や爆発音に、DPCMはサンプリング打楽器に用いた。海外NESではカセット拡張音源端子が削除されていたため、日米で音源構成が異なる（ゼルダ、悪魔城伝説など）。限られた機能の中で工夫された技術は驚異的。

## GENERALIZED
制約は創造性の母である。リソース無制限の現代であっても、使用する周波数帯域やボイス数を意図的に制限・整理することで、抜けの良い力強いサウンドが生まれる。

## AGENT
現代のローエンドプラットフォームやモバイル開発においても、同時再生ボイス数制限、メモリ予算、DSPエフェクト負荷を厳格に管理するプロファイリングを行う。

## Why it matters
システムの限界を知らずに音を詰め込むと、処理落ち、発音途切れ、帯域の濁りを引き起こし、結果として貧弱なサウンドになるため。

## Use with context
- Domains: 音源アーキテクチャ, 低負荷最適化, レトロスタイル開発
- Phases: 技術検証, アセット最適化, サウンドプログラミング
- Trigger: ターゲットハードのオーディオスペック策定、またはパフォーマンス最適化時

## Agent questions
- 再生チャンネル数や同時発音数がハードウェアの推奨帯域・メモリ上限を超えていないか？
- 各トラック・各SEの役割（ベース、リード、パーカッション、ノイズ）が周波数帯で綺麗に分離されているか？

## Suggested actions
- オーディオアセットのボイスグループ制限を設定し、重要度の低い音からボイススチール（発音停止）するプライオリティテーブルを実装する。
- 波形ごとの役割（矩形＝メロディ、三角＝低域、ノイズ＝打撃）を整理し、帯域衝突を避けるEQ処理を行う。

## Review criteria
- ハードウェアリソースの上限下でも発音の欠落やノイズ、処理負荷が発生しないか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
