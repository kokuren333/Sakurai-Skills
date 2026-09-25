---
id: spec-007
title: "空間スケールと速度単位の統一"
candidate_id: "SPEC-007"
source_file: "../../sources/raw/D-specification.md"
semantic_cluster: specification-and-communication
---

# 空間スケールと速度単位の統一

## Summary
ゲーム内世界における空間の距離感と時間軸を統一し、速度パラメータ（km/h, m/s, dot/frame）を明確に定義して直感的な感覚と一致させよ。

## SOURCE
ファミコンは画面幅256ドット、マリオブラザーズは最高速度1d/f。『カービィのエアライド』はカービィの身長20cmを基準にkm/hを定義したため時速が低めに出る。『新・パルテナ』のピットは猛スピードで歩くため足のステップを滑らせて許容。

## GENERALIZED
ゲーム内世界における空間の距離感と時間軸を統一し、速度パラメータ（km/h, m/s, dot/frame）を明確に定義して直感的な感覚と一致させよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
制作チーム全体で速度感覚の共通言語がないと、オブジェクトごとの移動速度の当たり付けやコリジョン調整に無駄な試行錯誤が発生するため。

## Use with context
- Domains: All Genres, Physics Engine Setup
- Phases: Technical Specification, Core Physics Setup
- Trigger: 新規プロジェクトの移動ロジック構築、物理定数の定義時

## Agent questions
- キャラクターの移動速度がマジックナンバーで記述されていないか？
- 1単位（1 unit）が現実の何メートルに相当するかがプロジェクト内で統一されているか？
- 体感速度とパラメータ上の数値が乖離して不自然になっていないか？

## Suggested actions
- 座標系と物理単位系（1 unit = 1m等）を明確に仕様書・コード定数として定義する。
- 移動ロジックにおいて、フレーム非依存（delta time考慮）のメートル毎秒（m/s）で速度を管理する。

## Review criteria
- 仕様書通りの移動速度を設定した際、画面上で期待通りの距離を期待通りの時間で通過できること。

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
