---
id: skill-plan-023
title: "人間らしい認知限界を模倣したCP（AI）思考ルーチン設計"
candidate_id: "SKILL-PLAN-023"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: controls-and-response
---

# 人間らしい認知限界を模倣したCP（AI）思考ルーチン設計

## Summary
コンピュータプレイヤーは超反応や機械的待ちを排し、知覚ディレイと攻撃的隙を設けて人間味と攻略性を作れ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「人間的知覚モデリング（Perceptual Modeling）」。AIには全知全能のデータアクセスをさせず、人間と同等の反応遅延（10〜15F）、知覚エラー率、感情的傾向（怒り・焦り・攻め気）を意図的に組み込む。

## AGENT
行動決定ロジックがバッティング（攻撃と回避の判断が同一フレームで競合）して棒立ちになる状態を防ぐため、ステートマシンやビヘイビアツリーにおいて明確な優先順位とフォールバックを定義する。

## Why it matters
ゲームAIの存在理由は「プレイヤーを負かすこと」ではなく、「プレイヤーに手応えと勝利の快感を与えること」であり、機械的な最適行動はゲームを最も退屈にするため。

## Use with context
- Domains: Fighting, Action, Sports, Racing
- Phases: AI Design, Combat Tuning, Playtest
- Trigger: 

## Agent questions
- CPがプレイヤーのボタン入力を検知した瞬間に0フレームでカウンター行動をとっていないか？
- 難易度最高（Level 9等）のCPと戦った際、理不尽な待ちではなく「強い人間のプレイスタイル」と感じられるか？

## Suggested actions
- CPの視覚・判断・入力の各ステップに、人間の生理的限界（12〜18フレーム程度）の知覚ラグを挿入する。
- CPの防御・回避行動の確率を絞り、あえて攻め込ませてプレイヤーが迎撃できる隙（フレームトラップ）を設計する。

## Review criteria

## Anti-patterns
- 乱数サイコロやカードドローにおいて、CP側だけ都合のいい出目が偏る「イカサマAI」の実装。
- プレイヤーが攻撃を仕掛けない限り絶対に動かない、完璧な待ちガイル型CPルーチン。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
