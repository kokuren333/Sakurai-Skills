---
id: spec-013
title: "彩りと逆転を生むランダム性の制御"
candidate_id: "SPEC-013"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 彩りと逆転を生むランダム性の制御

## Summary
同じ展開の繰り返しによる飽きを防ぎ、腕前差を埋める彩りとしてランダム性を導入しつつ、理不尽な敗北感を与えないよう腕前で活かせる余地を残せよ。

## SOURCE
スマブラのアイテム出現や勇者のコマンド選択。ピーチのスマッシュ技は昔ランダムだったが上下打ち分け可能に変更。擬似乱数は内蔵時計等をシードにしないと再現性が出てしまう注意点。『マイト＆マジック』や『ウィザードリィ』の「うん（LUCK）」パラメータ。

## GENERALIZED
同じ展開の繰り返しによる飽きを防ぎ、腕前差を埋める彩りとしてランダム性を導入しつつ、理不尽な敗北感を与えないよう腕前で活かせる余地を残せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
パーティゲームとしての笑いや盛り上がりを維持しつつ、長期的なリプレイ性を担保するため。

## Use with context
- Domains: Party Games, Roguelike, Action, RPG
- Phases: Game Systems Design, Balancing
- Trigger: アイテムドロップ、ランダムイベント、技のランダム要素の設計時

## Agent questions
- ランダム要素による敗北が『単に運が悪かっただけ』という理不尽な不快感になっていないか？
- ランダムな状況が発生した際、プレイヤーの判断やアドリブ力でカバー・活用できる余地があるか？
- 乱数生成器がリセット直後に常に同一の値を返すシード固定バグを抱えていないか？

## Suggested actions
- 乱数生成ロジックにエントロピー源（タイムスタンプ、ユーザー入力座標のハッシュ等）を適切にシード設定する。
- ランダム事象の発生後、プレイヤーが反応・対処できる猶予フレーム（Telegraph）を設ける。

## Review criteria
- 負けた側が『運が悪かった』と投げ出すのではなく、『次はあのアイテムをうまく使おう』と前向きに再戦したくなるか。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
