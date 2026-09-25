---
id: skill-mot-007
title: "フリップモーション（左右反転時の非対称演出）"
candidate_id: "SKILL-MOT-007"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# フリップモーション（左右反転時の非対称演出）

## Summary
サイドビュー画面でキャラが左右に向きを変える際、単なる軸反転ではなく、常にお腹と顔が手前を向く鏡対象モーションを用意せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
サイドビュー画面でキャラが左右に向きを変える際、単なる軸反転ではなく、常にお腹と顔が手前を向く鏡対象モーションを用意せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
キャラクターの顔・表情・胴体の主要デザインがプレイヤーから隠れてしまい、視認性と画面の華やかさが損なわれるのを防ぐため。

## Use with context
- Domains: 2.5D-Action, Fighting, 3D-Animation, Rigging
- Phases: Rig-Specification, Animation-System-Design
- Trigger: 2.5Dゲームや固定カメラの対戦ゲームでキャラクターの向き反転（Turnaround）システムを実装するとき

## Agent questions
- 右向き・左向きのどちらかでキャラクターが背中を向けてしまい、表情やアクションが隠れていないか？
- キャラクターの装備（右手武器、左手盾など）が左右非対称で、フリップ時に持ち手が矛盾しないか？

## Suggested actions
- 左右対称デザインのキャラクターに対し、向き反転時にポーズをミラーリング（鏡対象化）するフリップシステムを組み込む。
- 武器持ち手や左右非対称要素の有無をフラグ管理し、フリップ適用可否を判定する。

## Review criteria
- 左右どちらを向いて移動・待機しても、常に顔と胴体の前面が手前カメラ側を向いていること。

## Anti-patterns
- 3DモデルのTransform.Scale.X = -1 などの単純反転によるライティング・法線の破綻、またはY軸180度回転による背中向け放置。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
