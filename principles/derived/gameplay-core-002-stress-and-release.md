---
id: gameplay-core-002-stress-and-release
title: "ストレス付与と急激な解消のサイクル"
candidate_id: "GAMEPLAY_CORE_002_STRESS_AND_RELEASE"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: motivation-and-reward
---

# ストレス付与と急激な解消のサイクル

## Summary
障害によってプレイヤーにストレスを『ギュッ』とかけ、それを『パッ』と解放・解消させることで快感を生み出す。

## SOURCE
ゲームは『ストレスをかけて解消する』ことが面白さの核。 客観的に見ればストレスはない方が快適なはずだが、負荷をかけた後に解消することで初めてスッキリ感や快感が生まれる。 雑草を抜くようにストレス要因をすべて取り除いてはゲームにならない。

## GENERALIZED
難所・障害・リソース制約によって緊張と圧迫感を与え、クリアや撃破の瞬間に一気にそれを解除する心理的落差を設計する。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
障害や圧迫感が存在しないゲームは、退屈で記憶に残らない『平坦な作業』になってしまう。

## Use with context
- Domains: Level Design, Progression System, Boss Battles
- Phases: Level Scripting, Encounter Design, UX Tuning
- Trigger: 難易度調整時、またはステージの障害・敵配置をリファクタリングするとき

## Agent questions
- プレイヤーが解放感を得る直前に、十分な負荷（ストレス）が存在しているか？

## Suggested actions
- 難所をクリアした直後のエリアに安全地帯とアイテム宝箱を配置し、緊張と緩和のコントラストを強調する。

## Review criteria
- 障害の突破時に、明確なクリア演出およびリソース回復/強化手段が与えられているか。

## Anti-patterns
- ユーザーの要望を鵜呑みにして、移動制限や敵の攻撃など全てのストレス要素を削除すること。
- 解消の手段が存在しない理不尽なストレス（詰み状態、不可避の即死）を放置すること。

## Tradeoffs and exceptions
- Tradeoff: ストレス期間が長すぎるとフラストレーションで離脱され、短すぎると達成感が希薄になる。
- Exception: リラクゼーションや作業そのものの反復を楽しむスローライフゲームでは、ストレス付与を極力抑える設計もある。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
