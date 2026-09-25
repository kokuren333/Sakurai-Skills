---
id: skill-plan-001
title: "フレーム単位の物理・入力時間基準設計"
candidate_id: "SKILL-PLAN-001"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: controls-and-response
---

# フレーム単位の物理・入力時間基準設計

## Summary
ゲーム世界の時間・速度・距離の計算は秒単位ではなくフレーム（通常60fps基準）を最小単位として厳密に設計・評価せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
ゲーム内シミュレーションや入力受付ウィンドウ、ヒットストップ、無敵時間、攻撃判定の持続など、すべての時間依存パラメータをフレーム数（整数値）または固定タイムステップデルタ（1/60s）で固定管理し、ハードウェア描画レートの変動とゲーム内ロジック更新を正しく分離・同期させる必要がある。

## AGENT
可変フレームレート（Delta Time乗算）採用時であっても、格闘・アクション・精密レースゲーム等では物理挙動の決定論性（determinism）と入力先行入力のバッファリングを維持するため、内部FixedUpdateを60Hz等で固定化することが基本である。

## Why it matters
フレーム基準の感覚がないままミリ秒や秒単位でアニメーション・判定を作ると、操作レスポンスが鈍重（10フレーム以上の遅延）になったり、技の出が速すぎて視認防御不能になったりして、駆け引きの成立しないゲームバランスに陥るため。

## Use with context
- Domains: Action, Fighting, Platformer, Racing
- Phases: Specification, Combat Design, Animation, Code Review
- Trigger: 

## Agent questions
- 各アクションの発生・持続・硬直フレーム数は明文化されているか？
- 描画更新（Render）とロジック更新（Logic/Physics）が分離されているか？
- 人間の反射神経（約12〜15フレーム以上）を前提とした猶予時間設計になっているか？

## Suggested actions
- 仕様書内の全アクションに「発生F」「持続F」「全体F」の数値を定義する。
- ゲーム内時間をTick/Frame単位で一時停止・コマ送りできるデバッグ機能を初期に実装する。

## Review criteria

## Anti-patterns
- Update()内のDeltaTimeのみに依存し、フレーム落ち時に衝突判定のすり抜けや多段ヒットが発生する実装。
- アニメーションのキーフレーム時間に依存し、攻撃判定の発生フレームがプログラマ側で制御不能な設計。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
