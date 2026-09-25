---
id: fx-008-effect-scale-granularity
title: "エフェクトのスケール感と粒度をキャラクターと世界観に一致させよ"
candidate_id: "FX-008-EFFECT-SCALE-GRANULARITY"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# エフェクトのスケール感と粒度をキャラクターと世界観に一致させよ

## Summary
炎や水などの自然現象エフェクトは、サイズだけでなく『テクスチャの細かさ（粒度）』を対象物とスケール感に合わせて調整せよ。

## SOURCE
キャラ以上の大きさの炎がろうそくやたいまつに見えるのは『粒度が足りていない』から。ホムラの剣の炎はループ回数を増やし、パーティクルをより細かく小さくしてスケール感を出した。テクスチャ容量がきついときは素早く動かしてカバーする。

## GENERALIZED
炎や水などの自然現象エフェクトは、サイズだけでなく『テクスチャの細かさ（粒度）』を対象物とスケール感に合わせて調整せよ。

## AGENT
小さな炎を単にトランスフォームで拡大（Scale * 10）すると、巨大な炎ではなく『超至近距離で見たライターの火』に見える物理的知覚の錯覚を是正する。

## Why it matters
巨大な火炎魔法のはずが、巨大化させたマッチの火に見えてしまうと、ゲーム世界のスケール感と説得力が根底から崩れ、技の強大さがプレイヤーに伝わらなくなる。

## Use with context
- Domains: VFX Design, World Building, Texture Authoring
- Phases: VFX Asset Creation, Art Review
- Trigger: VFXのサイズ（Transform Scale / Particle Size）を基準値より大幅に変更するとき

## Agent questions
- パーティクルのスケール拡大に伴い、テクスチャのUVタイリングまたはノイズ周波数を追従スケールさせているか？

## Suggested actions
- エフェクトのサイズ拡大時に、マテリアルの`NoiseScale`パラメータを比例させて増加させるプリセットロジックを適用する。
- 『粒度不足』警告を発し、小サイズパーティクルのエミッションレート増加を推奨する。

## Review criteria
- 大技の炎が巨大な森林火災・業火の質感を持ち、ライターやろうそくの拡大に見えないこと。

## Anti-patterns
- 小さな松明用の炎テクスチャをそのままTransform.scale = (5, 5, 5)にして巨大爆炎として使い回す。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: ミニチュア調ゲーム、ボクセルゲーム、ドット絵ゲームなど、意図的に記号化された世界観。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
