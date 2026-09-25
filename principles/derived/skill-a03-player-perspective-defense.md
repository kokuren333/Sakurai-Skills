---
id: skill-a03-player-perspective-defense
title: "お客さんに説明できるの？（開発都合の不親切排除）"
candidate_id: "SKILL-A03-PLAYER-PERSPECTIVE-DEFENSE"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: player-centered-design
---

# お客さんに説明できるの？（開発都合の不親切排除）

## Summary
「開発側の都合や制約」を理由にプレイヤーへ不親切や不便を強いる仕様を一切許容するな。

## SOURCE
開発の都合（リソース不足、システム構築の困難さ等）を優先した不親切な仕様に対し、『プレイヤーに事情を説明して回るつもりなの？』と問う。遊び手にとって作り手の事情は無関係。

## GENERALIZED
内部アーキテクチャの制約や納期都合をユーザーインターフェースやゲーム体験に漏れ出させてはならない（リーキーアブストラクションのUX版防止）。

## AGENT
「DBの制約でロード時間が長い」「通信エラー時の処理が面倒だからリトライを省いた」といったエンジニアリング都合の妥協をブロックするルール。

## Why it matters
プレイヤーは購入・プレイ時に開発環境の苦労や制約を一切考慮せず、手元の製品の品質のみで評価するため。

## Use with context
- Domains: game_design, system_architecture, error_handling
- Phases: specification, implementation, qa
- Trigger: エラーハンドリング、ローディング設計、制限事項・仕様変更のレビュー時

## Agent questions
- この仕様や挙動は、開発都合（実装の手間、技術的制約）をユーザーに押し付けていないか？
- プレイヤーがこの不便に直面したとき、開発事情を知らない状態で納得できるか？

## Suggested actions
- 開発都合による制限（例：同時接続数制限、保存不可、不自然なUI）を検出し、代替アプローチを提案する
- 『技術的困難』を理由にしたUXの劣化が発生した場合、プログラマーと仕様策定者の間で折衝ポイントを再定義する

## Review criteria
- ユーザーエラーやシステムエラー時のメッセージが親切かつ自己解決可能であること
- 開発側の実装コスト削減のためにユーザーの操作ステップが増えていないこと

## Anti-patterns
- 「セーブデータ構造の変更が大変だから」とプレイヤーに手動でのバックアップや再設定を要求する
- 「内部処理が重いから」と、理由のわからない暗転・フリーズ時間をそのまま放置する

## Tradeoffs and exceptions
- Tradeoff: 実装コストや開発スケジュールへの負荷が増大するが、顧客満足度と製品寿命が守られる。
- Exception: ハードウェアの物理的限界（メモリ枯渇等）で、回避策が完全に存在しない極限状態。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
