---
id: skill-a11-no-plan-b
title: "プランBに頼るな（必殺の一本勝負）"
candidate_id: "SKILL-A11-NO-PLAN-B"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: scope-and-prioritization
---

# プランBに頼るな（必殺の一本勝負）

## Summary
企画・設計段階で保険の『プランB』を併記して判断を委ねず、自身が最善と信じる『プランA』一本を提示せよ。

## SOURCE
企画書で『プランB』を書くのはやめた方がいい。二度出しをせず、総合的に見て最も良いと思う案を責任を持って選ぶ。提案は後からチーム内で受ければ十分。

## GENERALIZED
意思決定者の責任逃れ（選択肢の丸投げ）を禁じ、コミットメントの純度を高めることで、チーム全体の検討リソースを最善案の実現に集中させる。

## AGENT
AIがアーキテクチャ設計や機能実装を提案する際、「A案もありますがB案もあります」とお茶を濁さず、「A案を推奨し、その理由と実装を提示する」と断定させる規律。

## Why it matters
プランBを用意すると、無意識にプランAの妥協や保険になり、思考の徹底が阻害され、チームもどちらに向かうべきか迷うため。

## Use with context
- Domains: spec_writing, architecture, decision_making
- Phases: pitch, specification, technical_proposal
- Trigger: 機能仕様書、設計書、または改善提案のドキュメントを作成するとき

## Agent questions
- 自信がないからと『〜〜という案もある』と逃げ道を作っていないか？
- 自分が責任を持って『これがベストだ』と言い切れる一本の仕様になっているか？

## Suggested actions
- ドキュメント内の『代替案（プランB）』セクションを削除し、最も優れている案（プランA）の記述を補強する
- 問題が発生した場合は、後からチームの集合知で軌道修正する前提で、初稿は一本槍で出力する

## Review criteria
- 提案内容が単一かつ明確で、迷いのない一本の筋が通っていること
- 意思決定を読者側に丸投げする記述（優柔不断な比較表のみの提示等）がないこと

## Anti-patterns
- 企画書に「格闘ゲームにする案」と「アクションパズルにする案」を両方載せて上司に選ばせようとする
- プルリクエストで2つの実装アプローチを並列でコードに残し、レビュアーに丸投げする

## Tradeoffs and exceptions
- Tradeoff: 提案が完全に否決された場合の手戻りリスクはあるが、提案の説得力と実現スピードは飛躍的に高まる。
- Exception: インフラ冗長化、災害対策（BCP）、フォールバック処理など、工学的安全性が必須の領域。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
