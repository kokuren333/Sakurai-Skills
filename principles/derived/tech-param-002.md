---
id: tech-param-002
title: "ロジック（骨）とパラメーター（筋肉）の完全分離および即時ホットリロード環境の構築"
candidate_id: "TECH-PARAM-002"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: specification-and-communication
---

# ロジック（骨）とパラメーター（筋肉）の完全分離および即時ホットリロード環境の構築

## Summary
プログラム内に数値を直書き（ハードコード）せず、すべて外部パラメーターとして分離し、ワンボタンで実行環境へ反映できる仕組みを作れ。

## SOURCE
プログラムは命令を処理する手順書（骨）、パラメーターは肉付けを行う数字（筋肉）。攻撃力、移動速度、減速度などをすべてExcel等に切り出し、企画者が直接調整できるようにする。かつて初代スマブラではコンバートに10分かかっていたが、Wii U/3DS以降はExcelのアドインによりボタン1つで実機に即時反映できるようにした。使用頻度の低いパラメーターは折りたたんで隠し、ヒューマンエラーを防ぐ。

## GENERALIZED
ゲームの手触りやバランス調整のサイクル（試行錯誤速度）は、パラメーター更新から実機確認までのレイテンシに直結する。プログラマーの手を介さずに調整が完結するパイプラインを構築する。

## AGENT
現代の開発環境におけるScriptableObject/DataAsset/JSONホットリロードや、インゲームGUIでのパラメーター変更の基盤思想。

## Why it matters
数値を1つ変更するたびにプログラマーに依頼・再コンパイル・再起動が必要な環境では、反復試行回数が劇的に低下し、ゲームの手触りが粗いまま完成してしまう。

## Use with context
- Domains: ゲームアーキテクチャ, バランス調整基盤, ツール開発
- Phases: 設計初期, プロトタイピング, 量産・チューニング
- Trigger: 戦闘・移動・アニメーション挙動の実装時、またはパラメーター定義時

## Agent questions
- コード内にハードコードされた数値が存在しないか？
- この数値は非エンジニアが安全に編集できる形式になっているか？

## Suggested actions
- ハードコードされた数値を検出し、外部設定ファイルへの切り出しを提案する。
- ホットリロード可能なデータ構造（Config/ScriptableObject）を自動生成する。

## Review criteria
- ロジック関数内に調整可能数値が直接存在しないこと
- 外部参照できる設定スキーマが提供されていること

## Anti-patterns
- スクリプト内に `float moveSpeed = 5.0f;` などの直数値を放置し、調整のたびにビルドを走らせる。
- 何百もの調整項目が1枚のシートにフラットに並んでおり、初見の調整者がどこを触るべきか混乱する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
