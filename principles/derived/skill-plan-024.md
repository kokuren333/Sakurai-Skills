---
id: skill-plan-024
title: "ゲーム内ムービーのスキップ保証とタイパ（時間対効果）最適化"
candidate_id: "SKILL-PLAN-024"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: pacing-and-time
---

# ゲーム内ムービーのスキップ保証とタイパ（時間対効果）最適化

## Summary
すべてのムービー・会話は即時スキップ・倍速可能とし、能動的操作時間を最大限に保護せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「プレイヤーの時間主権の尊重」。演出・ナラティブの鑑賞を強制せず、プレイヤーが自分のペース（等速・倍速・スキップ）でゲームプレイへ復帰する権利をシステムとして保証する。

## AGENT
ロード処理の裏隠しとしてムービーを利用する場合、バックグラウンド読み込み完了と同時にスキップ可能アイコンを画面に出すステート管理が必要。

## Why it matters
リトライ時や周回プレイ時にスキップ不能な長尺ムービーを見せられることは、現代のゲームにおいて最も不評を買うレビュー減点要因となるため。

## Use with context
- Domains: All Genres, Narrative Game, RPG, Action
- Phases: Cutscene System, UI/UX, Flow Design
- Trigger: 

## Agent questions
- ボス戦前で敗北してリトライする際、直前のムービーや会話をボタン一発で飛ばせるか？
- 初回プレイであってもムービースキップを禁止していないか？

## Suggested actions
- ポーズメニューからの「カットシーンスキップ」または特定ボタン長押しスキップを全イベントに統一実装する。
- 会話テキストはワンボタンで全文表示（瞬時送り）できるようにする。

## Review criteria

## Anti-patterns
- 敗北するたびに2分間のボスの長口上をスキップ不可で見せ続ける設計。
- ムービーの途中にランダムでQTE（クイックタイムイベント）を挟み、失敗したら即死・やり直しにする仕様。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
