---
id: skill-a05-high-density-spec-format
title: "企画書の書き方（1ページ1項目・図解主導フォーマット）"
candidate_id: "SKILL-A05-HIGH-DENSITY-SPEC-FORMAT"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: specification-and-communication
---

# 企画書の書き方（1ページ1項目・図解主導フォーマット）

## Summary
仕様書・企画書は『1ページ＝1トピック＋図1枚＋解説文2行』とし、章立てナビゲーションで現在位置を明示せよ。

## SOURCE
桜井氏の企画書は200ページ超あるが、1ページ1項目、図や写真1枚、文章2行。漫画の1コマのようにパッパとめくれる。大カテゴリーと小カテゴリーで全体の進捗を示す。

## GENERALIZED
ドキュメントのアクセシビリティを認知負荷の最小化（スキャナビリティ）によって担保し、読み手の集中力と理解速度を持続させる。

## AGENT
AIが生成する仕様書（Markdownやスライド）のフォーマット規定。文字の壁（Wall of text）を作らせず、視覚要素と最小限のテキストに分解させる。

## Why it matters
読むのにエネルギーを要する分厚い文字中心の仕様書は、チームメンバーに読まれず、仕様の誤解や実装漏れの原因となるため。

## Use with context
- Domains: technical_writing, game_design, ui_spec
- Phases: specification, documentation
- Trigger: 仕様書、機能解説ドキュメント、またはREADMEを作成・改訂するとき

## Agent questions
- 1つの画面やセクションに複数の重要トピックを詰め込みすぎていないか？
- テキストを読まなくても、図やスクショだけで8割の意図が伝わるか？

## Suggested actions
- 長文の仕様説明を分解し、1項目ごとに見出し・ワイヤーフレーム/図・2行の箇条書きに再構成する
- ドキュメント右側または上部に現在地を示すカテゴリナビゲーション（パンくずリスト）を付与する

## Review criteria
- 各項目の説明文が3行を超えていないこと
- すべての主要機能項目に対応する視覚的イメージ（図、モックアップ、遷移図）が存在すること

## Anti-patterns
- テキストのみが数千行続く仕様書を作成し、開発者に通読を強要する
- プレゼン時にスライドの長文をただ上から下へ読み上げる

## Tradeoffs and exceptions
- Tradeoff: ページ数・スライド枚数が膨大になるが、1ページあたりの読解時間はミリ秒単位になる。
- Exception: 複雑な数理モデルの証明、利用規約、APIの全パラメータリファレンス表。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
