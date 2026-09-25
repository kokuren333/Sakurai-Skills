---
id: skill-plan-013
title: "階層アウトラインによる仕様とアイデアの構造化"
candidate_id: "SKILL-PLAN-013"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: specification-and-communication
---

# 階層アウトラインによる仕様とアイデアの構造化

## Summary
仕様書や企画案は文章をベタ書きせず、折りたたみ可能な階層アウトラインでツリー構造化して管理せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
ゲームデザインの全体構造（情報アーキテクチャ）をオブジェクトツリーとして視覚化・編集可能にし、仕様の抜け漏れや矛盾をトポロジー的に把握・是正する。

## AGENT
AIエージェントへのプロンプト指示や設計ドキュメント生成においても、Markdownの見出し階層（H1〜H4）やYAMLのネスト構造で明確にスコープ分けされた仕様が最も精度高く実装される。

## Why it matters
非構造化された長文テキストで仕様を記述すると、項目の重複・矛盾・実装漏れが多発し、仕様変更時のリファクタリングコストが激増するため。

## Use with context
- Domains: All Game Design, System Architecture, Project Management
- Phases: Concept, Specification, Documentation
- Trigger: 

## Agent questions
- その仕様書は、見出しだけを畳んだ状態でゲーム全体の機能一覧として成立しているか？
- 機能の追加や削除を行った際、どの階層に属するかが明確に定義されているか？

## Suggested actions
- 仕様書をアウトラインエディタ（またはMarkdown見出し構造）で作成し、各機能の親子関係を厳密に定義する。
- メニュー階層（トップメニュー→大乱闘→通常戦→ルール選択等）と仕様書の階層構造を1対1で一致させる。

## Review criteria

## Anti-patterns
- 数百ページにわたる仕様が箇条書きやインデントなしの散文で書かれ、特定パラメータの記述箇所を検索できない状態。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
