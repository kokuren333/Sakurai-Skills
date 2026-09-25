---
id: skill-mot-003
title: "多軸被弾リアクション（強中小×上中下）の設計"
candidate_id: "SKILL-MOT-003"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# 多軸被弾リアクション（強中小×上中下）の設計

## Summary
ダメージリアクションは被弾箇所の高さ（上・中・下）と攻撃威力（小・中・大）のマトリクスでバリエーションを用意し、状況の直感的把握を支援せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
ダメージリアクションは被弾箇所の高さ（上・中・下）と攻撃威力（小・中・大）のマトリクスでバリエーションを用意し、状況の直感的把握を支援せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
一種類の被弾リアクションだけでは戦況の重みや攻防のダイナミクスが希薄化し、プレイヤーがゲーム内の物理的説得力を感じられなくなるため。

## Use with context
- Domains: Fighting, Action, Combat-Design, Character-Animation
- Phases: Animation-Planning, Combat-Specification
- Trigger: ダメージリアクションのステートマシン構築時、またはモーション発注リストの作成時

## Agent questions
- ヒットした高さ（ヘッドショット、ボディ、ローキック等）に応じたポーズの差異が存在するか？
- 弱攻撃と強攻撃で仰け反りの角度や滞空時間に明確な差があるか？

## Suggested actions
- ダメージリアクションを[Impact_Level: Low/Mid/High] × [Hit_Height: High/Mid/Low]のグリッドで定義する。
- 吹っ飛び軌道（Knockback Vector）に連動したポーズ（きりもみ、仰向け、真上）を分岐させる。

## Review criteria
- 攻撃の性質と被弾側のリアクションが直感的に一致しており、追撃可能性が視覚から判断できること。

## Anti-patterns
- どれだけ重い打撃を与えても同じモーションでしか怯まない設計。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
