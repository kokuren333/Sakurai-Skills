---
id: spec-001
title: "ヒットストップとイベント停止による手応えの付与"
candidate_id: "SPEC-001"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: feedback-and-game-feel
---

# ヒットストップとイベント停止による手応えの付与

## Summary
攻撃命中時、ボス撃破時、被弾ミス時に画面やオブジェクトを意図的に一時停止させ、強烈な手応えと状況把握の瞬間を生成せよ。

## SOURCE
『星のカービィ 夢の泉の物語』のボス撃破時フラッシュ停止、『ファンタジーゾーン』や『ディフェンダー』の自機撃墜時の画面停止演出。

## GENERALIZED
攻撃命中時、ボス撃破時、被弾ミス時に画面やオブジェクトを意図的に一時停止させ、強烈な手応えと状況把握の瞬間を生成せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
完全な等速で動かし続けると、衝突・被弾・撃破の瞬間が流れてしまい、『当たったのかどうか分からない』『いつの間にか死んでいた』という希薄で損な体験になる。

## Use with context
- Domains: Action, Fighting, Shooting, Action RPG
- Phases: Combat Design, VFX/Animation Implementation, Polishing
- Trigger: 戦闘・衝突・被弾・破壊処理のロジック実装時、または打撃感の改善レビュー時

## Agent questions
- 重要な当たり判定成立時にフレーム停止処理が組み込まれているか？
- 自機被弾時に『何に当たったか』をプレイヤーが視認できる停止時間が存在するか？
- ボスのトドメ演出で固有の停止＋演出（画面フラッシュ等）が発生しているか？

## Suggested actions
- Hitbox/Hurtboxの衝突成立イベントに、指定フレーム数のアニメーション／物理停止（ヒットストップ）タイマーを組み込む。
- シューティングや高速アクションで、被弾フレームに1〜3フレーム程度の停止＋被弾位置強調を挿入する。

## Review criteria
- ヒットストップなしとありでプレイ感を比較し、打撃の重み・成否が明確に伝わること。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
