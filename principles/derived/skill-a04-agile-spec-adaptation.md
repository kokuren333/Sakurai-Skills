---
id: skill-a04-agile-spec-adaptation
title: "仕様を変えること（集合知による迅速な最適解選択）"
candidate_id: "SKILL-A04-AGILE-SPEC-ADAPTATION"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: specification-and-communication
---

# 仕様を変えること（集合知による迅速な最適解選択）

## Summary
問題を発見したら隠さず即座に共有し、意固地にならず短期・長期の両面から仕様変更の最適解を迅速に下せ。

## SOURCE
仕様変更は手戻りやコスト増を生むが、問題があるのに変えないのは最悪。後から『そうだろうと思っていた』は厳禁。問題が出たらすぐ共有し、机上に選択肢を並べて集合知で最短で結論を出す。

## GENERALIZED
サンクコスト効果を排除し、早期のフェイルファストと透明性の高い課題共有によって、プロジェクト全体の軌道修正コストを最小化する。

## AGENT
静的解析やビルドエラーだけでなく、仕様の矛盾や性能ボトルネックを検知したエージェントが、隠蔽や先送りをせず即座にissue化して判断を仰ぐための規律。

## Why it matters
問題の報告や仕様変更の決断が遅れれば遅れるほど、下流工程（グラフィック、モーション、音響等）に壊滅的な巻き戻り被害が発生するため。

## Use with context
- Domains: project_management, issue_tracking, architecture
- Phases: implementation, integration, milestone_review
- Trigger: 設計上の矛盾、パフォーマンスの未達、またはスケジュール遅延の兆候を検知したとき

## Agent questions
- この問題を認識していながら『後から何とかしよう』と先送りしていないか？
- 仕様変更を行う場合、短期的な工数増と長期的な製品品質のどちらが勝るか？

## Suggested actions
- 問題を検知した瞬間、影響範囲・代替案・工数インパクトをセットにしたレポートを即座に作成する
- 『仕様を変えないリスク』と『変えるコスト』を比較可能なマトリクスとして提示する

## Review criteria
- 問題発生から共有までのリードタイムがゼロに近いこと
- 『後から分かっていた』という事後報告ではなく、検知時点でのアラートが上がっていること

## Anti-patterns
- 仕様の破綻に気づいていながら、怒られるのを恐れて実装を進め、マスターアップ直前に発覚させる
- 「最初に決めた仕様だから」と意固地になり、面白くないことが明白なシステムを作り続ける

## Tradeoffs and exceptions
- Tradeoff: 変更による短期的なスケジュール遅延やモチベーション低下は避けられないが、致命的な手戻りを防げる。
- Exception: マスターアップ直前など、変更によるリグレッションテストが物理的に不可能なフェーズ。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
