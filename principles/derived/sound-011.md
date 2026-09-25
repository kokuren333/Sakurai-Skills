---
id: sound-011
title: "世界の解像度を上げる環境音（アンビエンス）のレイヤー設計"
candidate_id: "SOUND-011"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# 世界の解像度を上げる環境音（アンビエンス）のレイヤー設計

## Summary
環境音は音量プライオリティを最下位にしつつも、風・水・機械・観客等の質感を緻密に重ねて世界の解像度と実在感を担保する。

## SOURCE
スマブラでも対戦中は聞こえにくいが、ステージごとに環境音が緻密に鳴っている。重要度としては最低なので肝心のSEを邪魔してはいけないが、無音だと雰囲気が失われる。3D空間や視点の臨場感には環境音が不可欠。コミカルなゲームであってもリアル寄りの環境音を重ねて問題ない。

## GENERALIZED
アンビエントは「無意識に知覚される世界のテクスチャ」である。意識して聴かせる音ではないため超低音量・広帯域に分散させ、沈黙の不自然さを排除して空間のリアリティを底上げする。

## AGENT
環境音は専用のBackground Audio Busにまとめ、戦闘開始時や重要SE発生時に自動で-3dB〜-6dB程度サイドチェインで押し下げる。

## Why it matters
アクションが途切れた瞬間に完全な無音になると、ゲーム世界がハリボテに感じられ没入感が一瞬で崩壊するため。

## Use with context
- Domains: 環境音設計, 空間音響, 没入感向上
- Phases: レベルデザイン, 環境オーディオ実装
- Trigger: ステージ・フィールドの環境音設計・実装時

## Agent questions
- 戦闘SEや台詞をマスキングしない音量バランス（最下層）に設定されているか？
- プレイヤーが足を止めた時に、その場の空気感（風、反響、遠景の営み）が伝わるか？

## Suggested actions
- ステージごとに「ベース環境音（風・空調等）」と「点音源環境音（水滴・鳥等）」の2層を配置する。
- バトル突入時に環境音バスのボリュームを自動抑制するルーティングを組む。

## Review criteria
- 対戦中には邪魔にならず、静止時には豊かな実在感を感じられるか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
