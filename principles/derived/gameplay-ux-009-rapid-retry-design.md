---
id: gameplay-ux-009-rapid-retry-design
title: "リトライまでの操作不能時間の極小化"
candidate_id: "GAMEPLAY_UX_009_RAPID_RETRY_DESIGN"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: controls-and-response
---

# リトライまでの操作不能時間の極小化

## Summary
ミスから再開までの時間はプレイヤーの熱量が急速に冷める魔の時間であり、演出を絞りロードを短縮して極力迅速に操作権を返す。

## SOURCE
やられたとき、演出を短めに絞り、ローディングを短くし、極力迅速に再開できるようにする。 プレイヤーに何の感情も与えない暗転や待ち時間は、熱を急速に冷めさせる。 冷める前に操作のバトンをプレイヤーに手渡せば、とりあえず再開してくれる。

## GENERALIZED
デス（ゲームオーバー）のペナルティがどれほど重くても、リトライが数フレーム〜数秒で瞬時に完了すれば、プレイヤーの「もう一回！」という衝動を維持できる。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ゲームオーバー画面やロード画面で数十秒待たされると、プレイヤーは冷静になり、ゲーム機の電源を切る（プレイを投げ出す）。

## Use with context
- Domains: Scene Management, Respawn Logic, UX / UI Design
- Phases: Implementation, Optimization, UX Polish
- Trigger: プレイヤーの死亡処理、シーン遷移、ゲームオーバー画面の実装時

## Agent questions
- 死亡から再操作可能になるまでの遷移に不要なフェードや同期ロードが入っていないか？

## Suggested actions
- リスポーン処理の不要なウェイトコルーチンを削除し、チェックポイントからの復帰を最短経路で実装する。

## Review criteria
- 死亡トリガーからプレイヤーの再入力可能状態までが目標秒数（推奨3秒以内、高難度なら1秒以内）を満たしているか。

## Anti-patterns
- ミスするたびにタイトル画面に戻されたり、長大なリザルト画面を見せられること。
- リスポーン直後の無敵時間や安全確認がなく、即座にリスポーンキルされること。

## Tradeoffs and exceptions
- Tradeoff: 演出を削りすぎると、ミスしたという実感や悔しさが薄れ、漫然としたゾンビアタックになる恐れがある。
- Exception: 演出そのものが物語の重大な転換点である特殊なイベント戦やアドベンチャーパート。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
