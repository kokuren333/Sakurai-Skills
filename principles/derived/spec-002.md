---
id: spec-002
title: "物理ボタンへの『重さ・手触り』の錯視的付与"
candidate_id: "SPEC-002"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: controls-and-response
---

# 物理ボタンへの『重さ・手触り』の錯視的付与

## Summary
同一の物理ボタン入力であっても、画面上の移動速度・加速度・慣性・予備動作・硬直のチューニングにより、コントローラー側に重さや軽さを錯覚させよ。

## SOURCE
PS5のDualSenseのような直接的な反力演出ではなく、画面の表現や仕様によってボタンの重さが変わる。『スーパーマリオUSA』のキャラごとの引き抜き速度や、スティックの傾斜認識最小値（遊び）の調整。

## GENERALIZED
同一の物理ボタン入力であっても、画面上の移動速度・加速度・慣性・予備動作・硬直のチューニングにより、コントローラー側に重さや軽さを錯覚させよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ゲーム内のキャラクターやアクションの個性を際立たせ、デジタル入力機器とプレイヤーの感覚を密接に同調させるため。

## Use with context
- Domains: All Action Games, Character Controller Design
- Phases: Prototyping, Character Tuning
- Trigger: プレイヤーキャラクターの操作レスポンス設計時、またはキャラごとの操作差別化時

## Agent questions
- 重量級キャラと軽量級キャラで、初速・慣性・モーションの発生フレームに適切な差別化があるか？
- アナログスティックのデッドゾーン（遊び）がハードウェア特性に合わせて最適化されているか？

## Suggested actions
- キャラクターパラメータに『初速』『最大速度』『加速度』『減速摩擦（慣性）』『入力感知デッドゾーン』を独立して定義し、重さの印象を調整可能にする。

## Review criteria
- コントローラーを握って操作した際に、画面内のオブジェクトの質量感が指先にフィードバックとして伝わるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
