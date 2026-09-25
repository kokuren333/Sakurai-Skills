---
id: tech-debug-008
title: "開発効率を極大化する単一コントローラー完結型デバッグモードの構築"
candidate_id: "TECH-DEBUG-008"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: technical-implementation
---

# 開発効率を極大化する単一コントローラー完結型デバッグモードの構築

## Summary
デバッグ機能は専用機材を要求せず、プレイ用の単一コントローラー（同時押し等）で全操作が完結するように実装せよ。

## SOURCE
デバッグモード（開発モード）では、全キャラクターの体力を所定値（0%, 100%, 999%など）に一瞬で変更したり、ふっとび軌跡を可視化したり、画面静止・コマ送り・向き変更・カメラ自由移動を行える。別コントローラーをデバッグ用として割り当てる方式もあるが、コントローラーを持ち替える手間がかかるため、通常持っている1つのコントローラーで同時押しなどを駆使して完結させる操作形態を強く推奨する。製品版では機能ごと抜くのが一般的だが、一部はトレーニングモード等に昇華される。

## GENERALIZED
検証・テスト操作のインターフェースコスト（機材持ち替え、画面切り替え）をゼロに近づける。開発者が思考を中断せずにその場で即座にエッジケースを再現できる環境を提供する。

## AGENT
インゲーム開発用コマンド（チートコマンド、デバッグメニュー）の入力マッピング設計。開発ビルドと製品ビルドのプリプロセッサ分離。

## Why it matters
検証のたびにコントローラーを持ち替えたり、PCのキーボードを叩きに行ったりする物理的コストがあると、開発者はエッジケースの確認を怠るようになり、結果としてバグの見落としが増加する。

## Use with context
- Domains: デバッグ機能, QAツール, インゲーム開発メニュー
- Phases: 全開発フェーズ, プロトタイピング, QA・バランス調整
- Trigger: デバッグ機能の実装、テストプレイ環境の整備時

## Agent questions
- このデバッグ操作はプレイ中の入力デバイスだけで即座に実行できるか？
- 製品版ビルドで確実に除外される設計になっているか？

## Suggested actions
- 単一ゲームパッドの同時押しによるデバッグトグル機能を実装する。
- デバッグ機能コードをプリプロセッサディレクティブで囲み、製品ビルドから除外する。

## Review criteria
- 外部入力機器なしで主要状態の再現・トグル操作ができること
- Releaseビルドでデバッグ機能が完全に除外されていること

## Anti-patterns
- デバッグ操作をするために、毎回別の2Pコントローラーやキーボードに手を伸ばさなければならない設計。
- デバッグ機能が製品版バイナリにそのまま残っており、ユーザーによる不正操作やクラッシュの原因になる。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
