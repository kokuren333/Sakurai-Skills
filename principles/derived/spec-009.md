---
id: spec-009
title: "メイン画面への情報統合（ミニマップ注視問題の回避）"
candidate_id: "SPEC-009"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# メイン画面への情報統合（ミニマップ注視問題の回避）

## Summary
プレイヤーの視線が画面隅のミニマップに釘付けにならないよう、進路ガイドや重要情報を3D空間のメイン画面内に直接描画せよ。

## SOURCE
『Red Dead Redemption 2』でマップばかり見がちになる問題。『Subnautica』の3Dマップの難しさ。『風来のシレン』の半透明全画面マップ。『Forza Horizon』の路面ガイド表示。『ホグワーツ・レガシー』の空間マーカー。

## GENERALIZED
プレイヤーの視線が画面隅のミニマップに釘付けにならないよう、進路ガイドや重要情報を3D空間のメイン画面内に直接描画せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
精緻な背景美術や敵の挙動をプレイヤーが楽しめなくなり、ゲーム体験が抽象的な『点と線の追従』に退行してしまうため。

## Use with context
- Domains: Open World, Racing, Action RPG, Dungeon Crawler
- Phases: UI/HUD Design, Level Design
- Trigger: ミニマップ、ナビゲーションHUD、クエスト誘導システムの実装時

## Agent questions
- テストプレイ時、プレイヤーの視線が画面隅のミニマップに固定されていないか？
- ナビゲーション情報をゲーム空間の路面やオブジェクト上に直接投影できないか？

## Suggested actions
- 画面隅のミニマップに頼る代わりに、プレイヤーの足元や空間内に動的な目的地へのパスラインを描画する。
- ダンジョン探索型の場合、メイン画面を遮らない半透明マップのオーバーレイ表示を実装する。

## Review criteria
- ミニマップを完全に非表示にしても、プレイヤーが迷わず景色を楽しみながら目的地へ到達できるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
