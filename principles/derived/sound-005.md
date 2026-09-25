---
id: sound-005
title: "アクションの手応えを増幅するフィクション音（ウソ）の調合"
candidate_id: "SOUND-005"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: feedback-and-game-feel
---

# アクションの手応えを増幅するフィクション音（ウソ）の調合

## Summary
打撃やアクションのSEは、現実の音そのままではなく誇張された「フィクション音（ウソ）」を意図的に混ぜて手応えを最大化する。

## SOURCE
格闘ゲームで殴る音が現実の生々しい音（ペチン等）だと物足りない。ストIIのヒット音や昭和のヤクザ映画のように誇張されたウソがあるからこそ快感になる。一方、マインクラフトのようにブロックの素材感（木・石）をリアルな音にすることで、粗いグラフィックに重みや質感を補完させるアプローチもある。

## GENERALIZED
SEは「リアリティの再現」ではなく「プレイ感覚の補正・増幅」ツールである。爽快感を与える打撃にはフィクションの誇張を、抽象的なグラフィックには実在感を与えるノンフィクション音を使い分ける。

## AGENT
打撃音を「アタック（誇張された打撃・破裂音）」「ボディ（重低音・衝撃）」「テイル（素材鳴り）」の3層でレイヤリングし、アタック部分に意図的なウソを盛る。

## Why it matters
現実の物理現象そのままの音はゲームの演出として迫力に欠け、プレイヤーに「命中した」「手応えがあった」という快感を提供できないため。

## Use with context
- Domains: SE演出, 打撃感（Hit Impact）, 触覚・視覚補完
- Phases: SE制作, バトル演出チューニング
- Trigger: 攻撃ヒット音、破壊音、クラフト音などの手応え調整時

## Agent questions
- 打撃音が現実的すぎて迫力不足（ペチペチした音）になっていないか？
- グラフィックが抽象的な場合、SEが質感や重みを補完できているか？

## Suggested actions
- ヒット音に低域のサブベースや誇張されたスラップ/破裂レイヤーを追加し、手応えを増強する。
- 低ポリゴン・ボクセル等の表現に対しては、リアルな環境素材録音SEを当てて存在感を担保する。

## Review criteria
- 攻撃がヒットした瞬間に十分な爽快感・手応えが得られるか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
