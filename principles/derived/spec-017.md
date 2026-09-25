---
id: spec-017
title: "素早い画面遷移と演出ワイプの最適化"
candidate_id: "SPEC-017"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 素早い画面遷移と演出ワイプの最適化

## Summary
画面切り替え・リトライ時の暗転時間を可能な限り短縮し、ロード時間を隠蔽しつつゲームの世界観に合った素早いワイプ演出を活用せよ。

## SOURCE
リトライ時のゆっくりしたフェードアウトや暗転時間はプレイヤーの時間を奪う。初代『バイオハザード』の扉演出はロード隠蔽兼恐怖演出。『ペルソナ5』の紙破れ戦闘遷移。『スーパーマリオパーティ』の雲ワイプ。『スマブラSP』の勝利画面ランダムワイプ。

## GENERALIZED
画面切り替え・リトライ時の暗転時間を可能な限り短縮し、ロード時間を隠蔽しつつゲームの世界観に合った素早いワイプ演出を活用せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
ゲームプレイのテンポ感を加速させ、プレイの中断・再開のストレスを極限まで低減させるため。

## Use with context
- Domains: All Genres, UI/UX, VFX/Transition
- Phases: UI Implementation, VFX Design, Flow Optimization
- Trigger: シーン遷移演出、画面フェード処理、戦闘画面移行処理の実装時

## Agent questions
- 画面遷移の暗転時間が0.5秒以上続き、プレイヤーを無意味に待たせていないか？
- ロード待ち時間を単なるロードバーではなく、世界観に合わせた動的演出で隠蔽できているか？
- リトライ時のフェードアウトが眠く、プレイヤーを苛立たせていないか？

## Suggested actions
- シーン遷移マネージャーのフェードイン/フェードアウト時間をデフォルト0.1〜0.2秒程度まで短縮する。
- シェーダーを用いたカスタムワイプ（ステンシルやディゾルブ）を導入し、ロード完了と同時にパッと画面を切り替える。

## Review criteria
- 画面が切り替わる瞬間にもたつきを感じず、次のゲームプレイへ瞬時に意識が引き継がれるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
