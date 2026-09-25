---
id: tech-file-001
title: "ソート順と大分類を優先するアセット・ファイル命名規則"
candidate_id: "TECH-FILE-001"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: specification-and-communication
---

# ソート順と大分類を優先するアセット・ファイル命名規則

## Summary
ファイル名・ラベル名は「大分類＋種別＋強度・方向」の順で命名し、アルファベット順ソート時に自然にグルーピングされる構造にせよ。

## SOURCE
『スマブラ』では、プレイヤー呼称が「上必殺ワザ」であっても開発上のファイル名は「SpecialHi」とする。通常攻撃は「Attack1〜4」、必殺ワザは「Special」、空中ワザは「Air」、方向は「Hi/S/Lw/N」として末尾に付加する。方向を先頭（HiAttackなど）にするとソート時に散乱する。また、ローマ字命名（例: Yumi）は海外スタッフや後続担当者が理解不能になるため極力排除し、英語（例: Bow）にする。

## GENERALIZED
アセット命名規則は「人間が声に出す呼称」ではなく「ファイルシステムやツールの辞書順ソートで同一コンテキストのアセットが連続配置されること」を最優先して設計する。

## AGENT
IDEやエンジン（Unity/Unreal）のプロジェクトビュー、コマンドライン検索におけるプレフィックス補完の効率を最大化する。

## Why it matters
数万〜数十万ファイルが存在するプロジェクトで、命名順が不揃いだと目視探索コストが増大し、スクリプトによる一括抽出・置換・自動検証が困難になる。

## Use with context
- Domains: アセットパイプライン, アニメーション命名, スクリプト構造化, リポジトリ規約
- Phases: 設計初期, アセット制作, リファクタリング
- Trigger: 新規アセット作成、ファイル作成、アニメーション/ステート名定義時

## Agent questions
- この命名でソートした際、関連ファイルが1箇所にまとまるか？
- 英単語として客観的に意味が通じるか（ローマ字になっていないか）？

## Suggested actions
- 命名規則に合致しているかを静的解析する。
- 方向修飾子がプレフィックスになっている場合はサフィックスへの移動を提案する。

## Review criteria
- 大分類がプレフィックスになっていること
- ローマ字表記が含まれていないこと

## Anti-patterns
- 「HiAttack4」「LwSpecial」のように方向を先頭につけてしまい、ソート時に「Hi」「Lw」でグループ化されてしまう設計。
- 「Keri」「Yumi」など、作成者しか文脈を理解できないローマ字命名。
- コード記述時のタイプ数を減らすためだけに過度な短縮名（略称）を使い、他者が可読性を失うこと。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
