---
id: skill-mot-002
title: "被弾時TOPノード保持とコンボ成立性の担保"
candidate_id: "SKILL-MOT-002"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# 被弾時TOPノード保持とコンボ成立性の担保

## Summary
ダメージモーションで姿勢を大きく崩す際も、モデル中心（TOPノード）と食らい判定の位置を安易に後退させず、後続の攻撃が抜けないよう設計せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
ダメージモーションで姿勢を大きく崩す際も、モデル中心（TOPノード）と食らい判定の位置を安易に後退させず、後続の攻撃が抜けないよう設計せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
見た目の派手さを優先した結果、設計上ヒットすべきコンボや連撃が空振りすると、プレイヤーに理不尽なストレスとバグ感を抱かせるため。

## Use with context
- Domains: Action, Fighting, Hitbox-Design, System-Balance
- Phases: Combat-Design, Collision-Tuning, QA-Verification
- Trigger: 連続攻撃（弱攻撃コンボ、近接連携）のヒット確認時やダメージアニメーションのコリジョン設定時

## Agent questions
- 被弾側がのけぞったことで、攻撃側のコンボ2打目・3打目の打撃判定から外れていないか？
- モデル中心（TOPノード）がモーションの都合で後ろに逃げていないか？

## Suggested actions
- 被弾アニメーション再生中のHurtbox（食らい判定）の前方突出幅を固定または拡大補正する。
- ルートボーン／TOPノードの位置を基準線上に維持し、メッシュの後退に追従させない。

## Review criteria
- 最短入力での連続弱攻撃が、キャラクターのサイズや被弾ポーズ差に関わらず安定して全段ヒットすること。

## Anti-patterns
- ダメージを受けるたびにモデル全体が後退し、同一場で連撃が入らないモーション設計。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
