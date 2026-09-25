---
id: spec-010
title: "処理速度向上に伴う仕様・ゲームバランス変動の警戒"
candidate_id: "SPEC-010"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 処理速度向上に伴う仕様・ゲームバランス変動の警戒

## Summary
開発終盤の最適化による処理速度向上やフレームレート安定が、ゲームスピードやAI難易度曲線を狂わせないよう独立制御せよ。

## SOURCE
『メテオス』で開発末期に最適化が進み処理速度が上がった結果、難易度上昇曲線が急激になり想定外の超高難易度に。『そだてて！甲虫王者ムシキング』で開発基板から製品版液晶になった際に処理速度が変わり腹減りが早くなった。『スマブラSP』初期版でCPUが異様に強くなった現象。

## GENERALIZED
開発終盤の最適化による処理速度向上やフレームレート安定が、ゲームスピードやAI難易度曲線を狂わせないよう独立制御せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
実機での最終確認やデバッグ期間が短い場合、想定外の高難易度や破綻したパラメータのまま製品が出荷されてしまうため。

## Use with context
- Domains: All Genres, Game Engine / Systems
- Phases: Optimization, QA / Final Balancing
- Trigger: パフォーマンス最適化コードのマージ時、フレームレート向上対応時、最終バランス調整時

## Agent questions
- 最適化によってフレームレートが上がったことで、タイマーやAI思考間隔が加速していないか？
- 低スペック環境と高スペック環境で、ゲームの体感難易度や速度に差が生じていないか？

## Suggested actions
- ゲームロジックの更新を可変FPSではなく厳密な固定タイムステップ（FixedUpdate等）にバインドする。
- 最適化前後のビルドで、単位時間あたりのゲーム内事象（落下速度、ダメージ蓄積、AI反応時間）を数値計測・比較する自動テストを回す。

## Review criteria
- 可変フレームレート下であっても、ゲーム内の難易度進行曲線やタイマーが一切狂わないこと。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
