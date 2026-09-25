---
id: spec-006
title: "遅さの徹底排除（待ち時間・硬直の最小化）"
candidate_id: "SPEC-006"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 遅さの徹底排除（待ち時間・硬直の最小化）

## Summary
ローディング、リトライ暗転、無駄なイベント送りなどの『プレイヤーが操作できない無意味な空白時間』を限界まで切り詰めよ。

## SOURCE
『新・光神話 パルテナの鏡』では上画面・下画面の操作可能実時間を徹底意識し、メニューから出撃までの待機時間を排除。『遅さは罪』と断言。

## GENERALIZED
ローディング、リトライ暗転、無駄なイベント送りなどの『プレイヤーが操作できない無意味な空白時間』を限界まで切り詰めよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ゲームを起動してから実際に遊んでいる時間の割合（実時間効率）が低いと、プレイヤーは退屈し離脱するため。

## Use with context
- Domains: All Genres, UI/UX, System Architecture
- Phases: System Design, UI Design, Optimization
- Trigger: UIフロー設計、リトライ機能実装、シーン遷移・ロード画面の実装時

## Agent questions
- ゲームオーバーからリトライ可能になるまでの間に、スキップ不能な無駄なフェードアウトやテキスト送りがないか？
- メニューを開閉するアニメーションにコンマ数秒以上の無駄なウェイトが含まれていないか？
- バックグラウンドでロードを完了させ、ユーザーを待たせずに即時操作可能にできないか？

## Suggested actions
- 不要な待機タイマー（WaitForSeconds）を全廃または最小化する。
- リトライ処理は即座に直前チェックポイントの初期化を開始し、1秒以内に操作権を返却する。
- シーン遷移の暗転時間を短縮し、ロードが完了次第フェードインを待たずに操作を受け付ける。

## Review criteria
- 死亡から再操作までの時間が極小であり、連続プレイのテンポが損なわれないこと。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
