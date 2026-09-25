---
id: skill-plan-004
title: "スクリーンウィンドウ限界を考慮したレイアウト占有率設計"
candidate_id: "SKILL-PLAN-004"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: clarity-and-readability
---

# スクリーンウィンドウ限界を考慮したレイアウト占有率設計

## Summary
ディスプレイの視野角は現実より極めて狭いことを前提とし、主目標とゲームプレイ有効領域を最大化せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「実スケールの忠実性」よりも「画面上での視認性・プレイアビリティの最適化」を優先する。カメラ画角（FOV）の調整、被写体の意図的スケーリング、無駄な遮蔽物の排除を行う。

## AGENT
フォトリアルなアセットをそのまま配置すると、画面解像度に対して重要オブジェクト（敵の予備動作、トラップ、アイテム）が小さくなりすぎるため、スケールやアウトライン強調を施す。

## Why it matters
現実の視野と異なり、周辺視野での状況察知ができないため、画面の情報占有率を誤ると「何が起きているか見えない」「標的が狙えない」という根本的なストレスになる。

## Use with context
- Domains: 3D Action, FPS/TPS, Racing
- Phases: Camera Design, Art Direction, UI/UX
- Trigger: 

## Agent questions
- 画面全体のうち、プレイヤーが注視し、ゲーム判断に寄与している実質面積は何％か？
- 標的や重要な予備動作が画面上で識別可能な十分なピクセル数を確保しているか？

## Suggested actions
- コクピットや装飾UIなどの固定遮蔽要素がゲーム画面の上下左右を不必要に圧迫していないか検証する。
- 遠景の敵キャラクターや重要アイテムのモデルスケールを、視認性向上のために誇張（1.2〜2倍等）する。

## Review criteria

## Anti-patterns
- リアルさを優先するあまり、画面の半分が車内ダッシュボードや壁で埋まり、肝心の走行路が見えないカメラ設定。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
