---
id: gameplay-balance-011-difficulty-hill-and-valley
title: "進行曲線における『山あり谷あり』の波状設計"
candidate_id: "GAMEPLAY_BALANCE_011_DIFFICULTY_HILL_AND_VALLEY"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: difficulty-and-accessibility
---

# 進行曲線における『山あり谷あり』の波状設計

## Summary
プレイヤーの成長と敵の強さを比例直線で平行進化させてはならず、乗り越えるべき壁（ボス）と楽ができる平地（休息・無双）の凹凸を作る。

## SOURCE
マイキャラの強さと敵の強さが正比例していると、ただ平坦な坂を登り続ける山登りのように単調で作業になる。 実際のバランスはデコボコさせ、手強い壁（ボス）の後に、強くなった自分を実感できる平地やボーナスを用意する。 敵の強さをプレイヤーのレベルに完全同期（スケーリング）させると、稼ぐ意味が消失する。

## GENERALIZED
成長の喜びは「以前苦戦した相手を圧倒できること」で実感される。常に敵が自分と同じ強さに自動調整されると、成長の実感が相殺されて徒労感を生む。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
常に勝率50%のギリギリの戦いが続くと、プレイヤーは疲弊し、キャラクターを成長させたカタルシスを感じられなくなる。

## Use with context
- Domains: RPG Leveling, Progression Pacing, Enemy Scaling
- Phases: System Architecture, Level Design, Balancing
- Trigger: 敵のレベル算出ロジック、またはワールド内のエンカウント難易度カーブを設計するとき

## Agent questions
- プレイヤーのレベル上昇に対する敵ステータスのスケーリングが1:1の直線になっていないか？

## Suggested actions
- エリアごとに固定のレベル帯を割り当て、プレイヤーが意図的に強くなって過去エリアを蹂躙できる余地を残す。
- ボスの前後に明快なテンションの落差（カットシーン、平坦な通路、補給地点）を挿入する。

## Review criteria
- ステージ進行に伴う難易度グラフが、直線ではなくノコギリ状または波状の起伏を持っているか。

## Anti-patterns
- プレイヤーのレベル上昇に合わせてワールド全体の全モンスターが自動で全く同じ比率で強化される設計。
- 常にボスクラスの緊張感が延々と続き、気の休まる瞬間が一度もないステージ構成。

## Tradeoffs and exceptions
- Tradeoff: 凹凸を激しくしすぎると、平地部分が退屈になりすぎたり、山の部分で詰みやすくなる。
- Exception: マッチメイキングを行うPvP対戦ゲーム（常に同等実力の相手と戦うことが求められる環境）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
