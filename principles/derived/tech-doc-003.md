---
id: tech-doc-003
title: "口語文章＋隅付き括弧【】による仕様書・パラメーター1対1結合作法"
candidate_id: "TECH-DOC-003"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: specification-and-communication
---

# 口語文章＋隅付き括弧【】による仕様書・パラメーター1対1結合作法

## Summary
仕様書内の自然言語説明に【パラメーター名】を埋め込み、数値化する箇所を○として記述することで、仕様と調整データの解離をゼロにせよ。

## SOURCE
単に「X速度」「X減速度」という変数名だけが並んでいると、どこを制御する数値か担当者以外に伝わらない。仕様書に「【ワザ開始時のX速度は○】で移動を開始」「同時に【ワザ中のX減速度は毎F○】で減速」と口語で書き、その【】内の文言をそのままパラメーターシートのキー名とする。数値部分のみを○で空欄化する。

## GENERALIZED
仕様書（要件定義）とデータ定義（スキーマ）を分離せず、仕様書の文章そのものをパラメーターのキーおよび説明文（Docstring）として機能させることで、認知のズレを防ぐ。

## AGENT
BDD（振る舞い駆動開発）におけるGiven/When/Thenテンプレートや、設定項目の自己文書化（Self-documenting Configuration）の極めて実践的な形態。

## Why it matters
キャラクターやオブジェクトごとに特殊仕様が存在する場合、変数名が抽象的だと後から別のプランナーが調整する際やデバッグ時に「この数値を変えると何が起きるのか」が分からなくなる。

## Use with context
- Domains: 仕様書作成, パラメーター定義, プログラマー・プランナー間プロトコル
- Phases: 仕様策定, 機能実装, データ入力・調整
- Trigger: キャラクター個別仕様の実装、データ定義ファイルのスキーマ作成時

## Agent questions
- パラメーターの命名は、仕様書内の文脈をそのまま表しているか？
- 調整者がパラメーターシートを見ただけで、動作の因果関係を理解できるか？

## Suggested actions
- 仕様書から【〜は○】の構文を抽出し、対応するデータ定義スキーマを自動生成する。
- 抽象的すぎるパラメーター名に対して、文脈を含む命名への変更をリコメンドする。

## Review criteria
- パラメーター名が口語的文脈を保持していること
- 仕様書とデータテーブル間でキーの表記揺れがないこと

## Anti-patterns
- 「param1」「val_x」「timer_a」など、文脈が失われた変数名・データキーをデータテーブルに配置する。
- 仕様書の文章表現と、パラメーター定義名がバラバラで、照合作業が必要になる状態。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
