---
id: skill-plan-012
title: "3D酔い（映像不一致）の工学的低減設計"
candidate_id: "SKILL-PLAN-012"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: camera-and-effects
---

# 3D酔い（映像不一致）の工学的低減設計

## Summary
視界情報と身体感覚の矛盾を減らすため、過剰な演出カメラ揺れを抑制し、固定基準点を提供せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「自己運動感覚（ベクション）の適正制御」。カメラの不随意な揺れ（カメラシェイク、ボビング）を最小化し、プレイヤーの操作入力とカメラ挙動の因果性を1対1で整合させる。

## AGENT
「酔わないカメラ＝演出のないカメラ」。演出性を高めようとカメラを振り回すほど酔いやすくなるため、アクセシビリティ設定として「カメラ揺れ無効」「モーションブラー無効」「視野角（FOV）スライダー」を必ず設ける。

## Why it matters
3D酔いはプレイヤーにとって生理的な苦痛であり、一度発症するとそのゲームを二度とプレイしなくなる致命的な離脱要因となるため。

## Use with context
- Domains: 3D Action, FPS/TPS, VR, Racing
- Phases: Camera System, Accessibility, Options Design
- Trigger: 

## Agent questions
- 歩行時のヘッドボビング（縦揺れ）や被弾時のカメラロールを無効化するオプションがあるか？
- 画面中央に視線を固定できるドットやレティクルが常時表示されているか？
- 開発チーム内に3D酔いしやすいテスターを配置し、検証を行っているか？

## Suggested actions
- 設定メニューに「カメラの揺れ：OFF」「モーションブラー：OFF」「被写界深度：OFF」のトグルを設ける。
- 乗り物や激しい移動時、画面に対して固定されたフレーム（枠）やUIレティクルを配置する。

## Review criteria

## Anti-patterns
- 没入感を高める名目で、ダッシュ時に激しくカメラが上下左右に揺れる仕様を強制し、OFFにできない設計。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
