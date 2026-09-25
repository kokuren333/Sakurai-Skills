---
id: skill-plan-021
title: "極端なパラメータ尖鋭化と固有仕様によるキャラ立ち"
candidate_id: "SKILL-PLAN-021"
source_file: "../../sources/raw/C-planning-design.md"
semantic_cluster: specification-and-communication
---

# 極端なパラメータ尖鋭化と固有仕様によるキャラ立ち

## Summary
多数のキャラクターを設計する際は、性能を平均化せずレーダーチャートを歪ませ、専用プログラムを辞さず固有仕様を与えよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
「アシンメトリック（非対称）デザインの徹底」。全体のパラメータ合計値を揃えて小さくまとめるのではなく、特定の強みと致命的な弱点を極端に設定し、システムレベルでの例外ルールを許容する。

## AGENT
汎用フレームワークで全キャラを管理しようとすると没個性化する。拡張可能なアビリティシステムを構築し、特定キャラ専用のStateや独自UIコンポーネントを安全に追加できるアーキテクチャにしておくことが前提となる。

## Why it matters
全キャラクターがバランスよく平均化されているゲームは、プレイヤーがキャラを選ぶ楽しみや、キャラごとの攻略法（対策）の多様性を失い、すぐに飽きられるため。

## Use with context
- Domains: Fighting, Hero Shooter, Action, RPG
- Phases: Character Design, Combat Balancing, Programming
- Trigger: 

## Agent questions
- そのキャラクターの性能を一言（例：「無敵」「超遠距離」「一撃必殺」）で言い表せるか？
- 全キャラ共通のパラメータ枠内に無理に収めようとして、個性を削ぎ落としていないか？

## Suggested actions
- レーダーチャートを作成し、あえて特定項目が突出して他が極小になる「デコボコ」な初期ステータスを組む。
- 主要キャラクターには、既存のルールを一部書き換える「固有仕様・専用UI」の導入を検討する。

## Review criteria

## Anti-patterns
- 強キャラ弱キャラの批判を恐れるあまり、全ファイターの移動速度、リーチ、発生フレームを均一化してしまう調整。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
