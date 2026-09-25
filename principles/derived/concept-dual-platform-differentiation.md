---
id: concept-dual-platform-differentiation
title: "マルチプラットフォームにおける『個（携帯）』と『公（据置）』の差別化"
candidate_id: "concept_dual_platform_differentiation"
source_file: "../../sources/raw/planning-concepts.md"
semantic_cluster: concept-and-direction
---

# マルチプラットフォームにおける『個（携帯）』と『公（据置）』の差別化

## Summary
携帯機と据置機で同時展開する場合、基幹システムを共通化しつつ、プレイスタイル（1人・通信 vs 大人数・据置）に応じた固有モードを割り振れ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
マルチデバイス展開時、単なる同一内容の移植（ベタ移植）にするのではなく、デバイスの利用シーン（プライベート画面 vs パブリック画面）に応じた専用の体験を1つずつ用意する。

## AGENT
共通化できるアセット（判定、ロジック、モーション）と、差別化すべきコンテキスト（画面数、通信形態、解像度）を設計初期に厳格に切り分けることが成否を分ける。

## Why it matters


## Use with context
- Domains: Cross-Platform, Architecture, Game Mode Design
- Phases: Architecture Design, Scope Planning
- Trigger: 携帯機と据置機、またはMobileとPC/Consoleのマルチプラットフォーム開発を設計するとき

## Agent questions
- ハードウェア間の共有モジュールとプラットフォーム固有モジュールが適切に抽象化されているか？
- 携帯端末ならではの遊び（個人の画面）と据置ならではの遊び（大画面共有）が設計されているか？

## Suggested actions
- コアゲームプレイのロジック層をプラットフォーム非依存コードとして分離する。
- UIおよび周辺ゲームモードをターゲットハードの利用シーンに合わせて分岐実装する。

## Review criteria
- 携帯機側で60fps等の必須描画パフォーマンスが死守されていること。
- どちらのハードを購入したユーザーも、そのハードならではの固有の恩恵を感じられること。

## Anti-patterns
- 下位ハードの性能限界を無視して上位ハードと同じ描画・処理を強要し、破綻すること。
- 両ハードの特性を無視した完全同一のベタ移植で、片方のハードで遊ぶ意義を失わせること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: クラウドセーブによるクロスプログレッションのみを売りとする単一体験型タイトル。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
