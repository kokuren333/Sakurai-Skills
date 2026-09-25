---
id: spec-016
title: "発売後アップデートへの健全な距離感と初頭完成度の追求"
candidate_id: "SPEC-016"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 発売後アップデートへの健全な距離感と初頭完成度の追求

## Summary
アップデートを前提とした未完成でのリリースを戒め、発売日時点で完成形を目指しつつ、市場所見テストの桁違いな試行回数を謙虚に補完せよ。

## SOURCE
昨今のゲームは昔の100倍〜1万倍複雑でデジタルらしからぬ揺らぎを生む。社内でどれだけデバッガーを集めても市場の試行回数には勝てない。しかしアップデートはメーカーの自発的サービスであり、最初から完成度を高めておくのが大前提。

## GENERALIZED
アップデートを前提とした未完成でのリリースを戒め、発売日時点で完成形を目指しつつ、市場所見テストの桁違いな試行回数を謙虚に補完せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
製品としての初期信頼性を担保しつつ、複雑化しすぎた現代ゲームの品質を市場投入後も維持するため。

## Use with context
- Domains: All Genres, Project Management, Release Engineering
- Phases: Production Scheduling, Post-launch Support
- Trigger: マイルストーン設定、出荷判定（Release Gate）、アップデート方針の策定時

## Agent questions
- 『あとでパッチを当てればいい』という前提で、既知の重大な不具合やバランス崩壊を残したまま進行していないか？
- 数百万人のユーザーが遊んだ際に極低確率（1/1000等）で踏まれる致命的バグの検知・修正パイプラインが整っているか？

## Suggested actions
- マスター版提出基準（Zero Crash, Core Loop Complete）を厳格に適用する。
- リリース後のクラッシュレポート収集およびホットフィックス配信フローを自動化・事前検証しておく。

## Review criteria
- オフライン環境のパッケージ単体であっても、ゲームクリアまで致命的な破綻なく完結して楽しめる品質であること。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
