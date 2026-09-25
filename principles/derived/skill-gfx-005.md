---
id: skill-gfx-005
title: "視覚的レタッチによる具体的ディレクション"
candidate_id: "SKILL-GFX-005"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: clarity-and-readability
---

# 視覚的レタッチによる具体的ディレクション

## Summary
言葉だけの指示（『もっと明るく』等）で工数を浪費せず、Photoshop等の短時間（5〜10分）レタッチ画像で修正前後の明確な着地点を示す。

## SOURCE
【明示】グラフィック監修をする際、口頭やテキストだけで伝えるのは難しい。ディレクターがPhotoshopでコントラストを上げ、色相をずらし、消しゴムをかけて照り返しを作るなどのレタッチ画像を5〜10分で作成して提示する。最初から完璧な絵をアーティストに求めるのは無理があるため、監修画像で方向性を示し、アーティストに製品レベルまで磨いてもらう。

## GENERALIZED
【一般化】アートやUIのフィードバックループにおいて、抽象的な言語化は解釈のブレを生む。差分画像（Before/After）と矢印・注釈による視覚指示が最も手戻りを減らす。

## AGENT
【補足】AIエージェント自身が画像生成やUIコード修正を行う際も、差分イメージの提示や明確な数値パラメータ（コントラスト+15%, Hue-10°等）を伴う指示を行う。

## Why it matters


## Use with context
- Domains: アートディレクション, チーム開発, UI/UXデザイン, アセット監修
- Phases: アートレビュー, スプリントレビュー, フィードバック
- Trigger: UIやグラフィックのコードレビュー、アーティストへのリファクタリング指示、見た目の改善提案時

## Agent questions
- 指示内容は客観的・視覚的に再現可能か？
- 修正前（Current）と修正後（Proposed）の対比が明確か？

## Suggested actions
- CSS/シェーダーのパラメータ変更前後のプレビュー画像を生成し、差分を明示する。
- 『彩度を10%下げ、足元に濃い影を落とす』といった具体的変更指示を生成する。

## Review criteria
- 受取側が一切の推測を挟まずに作業に着手できる具体的差分が定義されていること。

## Anti-patterns
- テキストチャットだけで長文の修正依頼を送り、アーティストに何度もリテイクを繰り返させる。
- 指示者がすべてを完璧に描こうとして監修作業に何時間も費やし、ボトルネックになる。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
