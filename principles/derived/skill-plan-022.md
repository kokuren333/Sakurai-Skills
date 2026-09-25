---
id: skill-plan-022
title: "色覚多様性対応と白黒明度コントラスト検証"
candidate_id: "SKILL-PLAN-022"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: difficulty-and-accessibility
---

# 色覚多様性対応と白黒明度コントラスト検証

## Summary
色分けのみに依存するゲームルールを排除し、白黒化しても機能する明度差と形状識別を保証せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「冗長符号化（Redundant Coding）の原則」。色（Hue）単体に意味を担わせず、形状（Shape）、模様（Pattern）、明度（Luminance）、アイコン、エフェクトを常に組み合わせて情報を伝達する。

## AGENT
シェーダーやポストプロセスでグレースケール表示、および色覚シミュレーション（Protanopia, Deuteranopia）をワンボタンで切り替えられるデバッグビューをエンジン内に常備すべきである。

## Why it matters
男性の約20人に1人（欧米では8〜10%）が存在する色覚多様性を持つユーザーが、ゲームの基本ルールに参加すらできなくなるアクセシビリティの致命的欠陥を防ぐため。

## Use with context
- Domains: All Genres, Puzzle, UI/UX, VFX/Art
- Phases: Art Direction, UI Design, Shading, QA
- Trigger: 

## Agent questions
- ゲーム画面を白黒（グレースケール）にした時、敵・味方・弾・足場・アイテムの区別が瞬時につくか？
- パズルゲームのピースが「色」だけでなく「アイコン/形状」でも識別可能になっているか？

## Suggested actions
- Photoshop等の色覚シミュレーター、またはエンジンのデバッグシェーダーでゲーム画面をP型/D型/グレースケールで確認する。
- 色分けが必要な要素には、必ず固有のシンボルマークや幾何学模様を併記する。

## Review criteria

## Anti-patterns
- 赤と緑のランプだけで「敵/味方」や「ON/OFF」を表現し、明度差も形状変化もないUIデザイン。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
