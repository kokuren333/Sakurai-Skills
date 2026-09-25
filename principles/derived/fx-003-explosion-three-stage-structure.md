---
id: fx-003-explosion-three-stage-structure
title: "爆発は『閃光 → 爆発（火炎） → 残煙』の三段階推移で描く"
candidate_id: "FX-003-EXPLOSION-THREE-STAGE-STRUCTURE"
source_file: "../../sources/raw/H-effects.md"
semantic_cluster: feedback-and-game-feel
---

# 爆発は『閃光 → 爆発（火炎） → 残煙』の三段階推移で描く

## Summary
単一の爆炎で終わらせず、『瞬時の閃光』で事象発生を伝え、『外へ弾ける爆炎』で威力を示し、『滞留する残煙』で結果を余韻として残せ。

## SOURCE
爆炎がモヤッと上がって終わるのはダメ。①閃光（瞬時、長い光条、暗色混ぜ）、②爆発（中央から飛び出す、火の粉）、③残煙（黒煙、火炎とのバトンタッチ、収束）。地上と空中でも爆発パターンを分ける。

## GENERALIZED
単一の爆炎で終わらせず、『瞬時の閃光』で事象発生を伝え、『外へ弾ける爆炎』で威力を示し、『滞留する残煙』で結果を余韻として残せ。

## AGENT
ゲームデザイン上、ヒット判定フレームは第1〜第2段階に集中させ、第3段階は判定なしの視覚的リマインダーとして機能させる。

## Why it matters
閃光がないとヒットの瞬間が伝わらず、残煙がないと爆発が軽薄に見えて手応えが残らない。三段階のメリハリがあることで、プレイヤーは『何かが激しく破壊された』という快感を強く得る。

## Use with context
- Domains: VFX Design, Animation Timing, Combat Feedback
- Phases: VFX Prototyping, Animation Tuning
- Trigger: 爆発（Explosion/Impact/Burst）エフェクトのタイムラインやステートマシンを構築するとき

## Agent questions
- Time=0で最大輝度の光条/閃光が描画されているか？
- BurstからSmokeへのバトンタッチ（ブレンド）が連続的に行われているか？

## Suggested actions
- VFXタイムラインに『Flash (加算+暗色ライン)』『Fireball (テクスチャ反転/拡散)』『Smoke (アルファブレンド/低速上昇)』の3グループが存在するか検証する。

## Review criteria
- 0.1秒以内に爆発発生が認識でき、かつ0.5秒後にも爆発地点が余韻として把握できること。

## Anti-patterns
- 初速のない煙テクスチャが等速で拡大・フェードアウトするだけの爆発。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 超高速連射武器の着弾爆発など、残煙を残すと画面が煙だらけになり視界を塞ぐ場合（寿命を大幅に短縮する）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
