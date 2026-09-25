---
id: skill-plan-018
title: "カスタマイズ画面における「結果の事前想像」支援設計"
candidate_id: "SKILL-PLAN-018"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: clarity-and-readability
---

# カスタマイズ画面における「結果の事前想像」支援設計

## Summary
アセンブルや装備変更画面は、性能差の図解・明瞭なメリデメ・即時試射環境を整えて選択作業自体を娯楽化せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「計画フェーズのゲームプレイ化（Mental Sandbox）」。メニュー画面を単なる設定変更の場にせず、プレイヤーが頭の中で戦闘シーンをシミュレーションし、試行錯誤できる環境を提供する。

## AGENT
パーツを選んだ瞬間に別画面へロードすることなく、同一画面内のサブウィンドウで攻撃アニメーションや射程ガイドが表示されるシームレスなUI構造が求められる。

## Why it matters
数値テキストの羅列だけでは性能差がイメージできず、カスタマイズが「面倒な事務作業」に堕落してしまうため。

## Use with context
- Domains: Mecha, Action RPG, Racing, Shooting
- Phases: UI/UX, Equipment Design, Shop Design
- Trigger: 

## Agent questions
- 装備を変えたとき、実際のゲームプレイでどう挙動が変わるかが視覚的に把握できるか？
- カスタマイズ画面からワンボタンで移行できるテストレンジ（試し撃ち場）があるか？
- 所持品が増えたときに迷わないソートや自動最強装備機能があるか？

## Suggested actions
- 武器選択UIに、射角・弾道・射程を図解するプレビューアニメーションを組み込む。
- ショップやガレージ内に、ローディングなしで弾を撃てるテストスペースを常設する。

## Review criteria

## Anti-patterns
- 大量のパラメータが英数字だけで表示され、実際に装備して出撃するまで何が変わったか分からないUI。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
