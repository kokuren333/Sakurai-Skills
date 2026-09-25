---
id: tech-task-004
title: "チケット駆動による工程の可視化と非同期化（直列化の排除）"
candidate_id: "TECH-TASK-004"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: clarity-and-readability
---

# チケット駆動による工程の可視化と非同期化（直列化の排除）

## Summary
すべてのタスクをデジタルチケット化して担当と期限を明確にし、上流・下流工程を過度に直列化（ブロッキング）させずに並行進行させよ。

## SOURCE
仕事はすべてサーバー上のチケットで管理し、担当者・ステータス（進行中、完了、保留、破棄）・期限を設定して可視化する。1つのキャラクターを作るにも、企画→モデル→モーション→プログラム→エフェクト→サウンド→調整と多くの職種が関わる。モデルが完成しないとモーションが作れないといった上流・下流の依存関係があるが、作業が直列化して全体が止まらないよう注意する。バグもすべてチケットで起票し、セクションリーダー経由で担当者に配分する。

## GENERALIZED
ゲーム開発パイプラインにおける依存ブロッキング（待ち時間）の最小化。モックや仮アセットを活用して下流工程を先行可能にし、タスクの状態遷移をチケット管理ツールで追跡可能にする。

## AGENT
アジャイル開発におけるカンバン方式やJira/Redmineの運用規約、仮アセット（グレイボックス）による並行開発手法。

## Why it matters
直列依存が強いワークフローでは、前工程の遅延がプロジェクト全体のボトルネックとなり、後工程（調整・デバッグ）の期間を圧迫してクオリティ崩壊を招く。

## Use with context
- Domains: プロジェクト管理, チーム運営, アセットパイプライン
- Phases: 全フェーズ, 量産期, QA・デバッグ
- Trigger: 複数工程にまたがる機能開発の計画時、タスク分解時

## Agent questions
- このタスクは他タスクの完了を不必要にブロックしていないか？
- モック/スタブを用いて下流タスクを先行着手できないか？

## Suggested actions
- タスクの依存関係グラフを作成し、クリティカルパス上のブロッキングを警告する。
- スタブ実装（仮API、仮データ）を先行定義するタスクを提案する。

## Review criteria
- 依存関係が最小化され、並行着手可能な構造になっていること

## Anti-patterns
- 最終クオリティのモデルができるまでモーションやプログラムの実装を一切始めない完全ウォーターフォール進行。
- チャットツールの個人DMで作業依頼やバグ報告を行い、進捗がブラックボックス化する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
