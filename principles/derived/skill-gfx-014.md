---
id: skill-gfx-014
title: "モニター個体差と環境光を考慮した安全コントラスト設計"
candidate_id: "SKILL-GFX-014"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: clarity-and-readability
---

# モニター個体差と環境光を考慮した安全コントラスト設計

## Summary
制作者の高品位モニターだけで画作りを完結させず、暗部・明部がつぶれやすい民生用モニターや室内の照明差を想定し、重要な情報が埋没しないコントラストマージンを確保する。

## SOURCE
【明示】グラフィックチェックで長年困っているのがモニターの個体差。同じメーカーのモニターでも色や明るさがズレており、部屋の照明によっても色合いが激変する。あるモニターでは綺麗に見えても、別のモニターでは影が真っ黒につぶれたり、逆にコントラストが浅くなったりする（ミュウツーの比較例）。制作者の環境がズレていると致命的。最終的には複数モニターで目視確認し、色彩の落差を埋める仕組みが必要。照明はなるべく無個性なものを使うこと。

## GENERALIZED
【一般化】エンドユーザーの表示デバイス（TN/IPS/OLED、安価なテレビ、スマホ画面）およびプレイ環境（明室・暗室）には巨大な分散がある。マスターデータには十分な輝度・コントラストのダイナミックレンジマージンを持たせよ。

## AGENT
【補足】カラーキャリブレーション（キャリブレーターによるsRGB/D65管理）の社内徹底に加え、ゲーム内ガンマ調整機能（『ロゴがかすかに見えるまでスライダーを動かしてください』）の実装。

## Why it matters


## Use with context
- Domains: カラーマネジメント, UIデザイン, ライティング, QA・テスト
- Phases: 開発環境セットアップ, マスターアップ前画質調整, QA
- Trigger: UIカラースキーム決定時、暗所ステージのライティング時、グラフィック設定機能実装時

## Agent questions
- 最重要UIと背景のコントラスト比はWCAG基準（または最低4.5:1）を満たしているか？
- 低階調領域（RGB: 0〜30）にゲームプレイ上必須の情報が置かれていないか？

## Suggested actions
- 画面の輝度ヒストグラムを走査し、極端な黒つぶれ・白飛び領域のクリッピング警告を出す。
- ガンマ補正シェーダーとキャリブレーション用テストパターンの実装コードを生成する。

## Review criteria
- 劣悪な発色環境（コントラスト低下・高輝度環境光）下でも、ゲームプレイに支障をきたさないこと。

## Anti-patterns
- 暗い部屋の高級有機ELモニターだけでライティングを調整し、昼間のリビングの液晶テレビで遊ぶと画面が真っ暗で何も見えない。
- UIの境界線を背景とほぼ同色の僅差の明度で設計し、モニターが変わると枠線が消失する。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
