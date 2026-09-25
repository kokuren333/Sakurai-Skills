---
id: skill-plan-009
title: "入力無反応（ノーリアクション）の完全排除"
candidate_id: "SKILL-PLAN-009"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: controls-and-response
---

# 入力無反応（ノーリアクション）の完全排除

## Summary
コントローラーのどのボタンを押しても、何らかの視覚・聴覚・触覚的反応を返し、プレイヤーを迷わせるな。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「入力に対する不可逆なシグナル伝達」。ゲームは手からの情報伝達と目・耳への反応の双方向ループであり、不感地帯（デッドロック）を作らない。

## AGENT
使えない状況（クールダウン中、スタミナ切れ、対象不在）であっても、エラーSEやキャラクターの拒絶ジェスチャー、UIの点滅を返し、「入力自体は届いているが無効である」ことを伝える。

## Why it matters
無反応は「フリーズしたのか」「コントローラーが壊れたのか」「キー設定が違うのか」というメタ的混乱を生み、操作への没入感を破壊するため。

## Use with context
- Domains: All Genres, UI/UX, System
- Phases: Input Handling, UI Programming, QA
- Trigger: 

## Agent questions
- 現在操作不能な状態（ムービー中、硬直中、ロード中）でボタンを押した際、何らかのフィードバックがあるか？
- メニュー画面で主要なボタン以外を押したときに無音で無視されていないか？

## Suggested actions
- アクション不能時に入力された場合、エラー音または専用の「不発モーション/アイコン点滅」を再生する。
- カットシーン中にボタンを押すと、即座に画面隅にスキップボタンのガイドUIがフェードインする仕様にする。

## Review criteria

## Anti-patterns
- ロード中やイベント中にキーを押しても画面に一切変化がなく、進行中かフリーズか判別できない状態。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
