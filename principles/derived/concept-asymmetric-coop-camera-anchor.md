---
id: concept-asymmetric-coop-camera-anchor
title: "主役・脇役の重み付けによるマルチプレイ追従カメラの破綻防止"
candidate_id: "concept_asymmetric_coop_camera_anchor"
source_file: "../../sources/raw/planning-concepts.md"
semantic_cluster: camera-and-effects
---

# 主役・脇役の重み付けによるマルチプレイ追従カメラの破綻防止

## Summary
同一画面マルチプレイではプレイヤー間の重み付けを均等にせず、カメラの主従関係と自動復帰システムで画面外破綻を許容せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
制約のある同一画面マルチプレイでは、プレイヤー全員を同列に扱わず、主導権（カメラ権限や進行権限）を1人に集約し、従属プレイヤーには高速復帰機能を与えることでゲームテンポを維持する。

## AGENT
この非対称性は、親と子、熟練者と初心者が一緒に遊ぶ際、熟練者が進行を牽引しつつ初心者が置いていかれてもストレスを感じない優れたソーシャル構造を生む。

## Why it matters


## Use with context
- Domains: Multiplayer, Camera System, 2D Action
- Phases: Architecture Design, Camera Implementation
- Trigger: 同一画面内でのマルチプレイ機能やフォロワーAI、追従カメラを実装するとき

## Agent questions
- プレイヤー同士の移動速度差によって進行不能や詰みが発生しないか？
- カメラの移動基準が明確に1点に定まっているか？

## Suggested actions
- 追従カメラのターゲット選定ロジックをPrimary Playerに固定する。
- Secondary Playerが画面外判定（Out of Bounds）を受けた際のワープ復帰処理を記述する。

## Review criteria
- 1Pが先行してダッシュしてもゲームが停止せず、2Pが迷子にならず復帰できること。

## Anti-patterns
- 画面端に引っかかったプレイヤーのせいで全員がスクロールできず立ち往生するカメラ設計。
- 画面外に出た瞬間に1ミスとなり残機が減る設計。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 画面分割マルチプレイや、全員が等しい権利を持つ対戦型アリーナゲーム。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
