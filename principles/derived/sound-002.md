---
id: sound-002
title: "プレイヤーとの影響度に基づく効果音プライオリティ階層化"
candidate_id: "SOUND-002"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: feedback-and-game-feel
---

# プレイヤーとの影響度に基づく効果音プライオリティ階層化

## Summary
効果音の音量と目立ち度は、音源の物理的大きさではなく「プレイヤーへの影響度・勝敗直結度」に比例させて決定する。

## SOURCE
ゲームの効果音はプレイヤーとの関係性が高いものほど音量を大きく、目立たせる。撃墜音（最重要・最大）＞ヒット音・ジャストシールド＞必殺技発動＞ボイス＞爆発＞回避・シールド受け＞空振り・ダッシュ＞ジャンプ・着地＞歩行（最低）の順。

## GENERALIZED
オーディオミックスは物理シミュレーションではなくゲーム情報伝達の優先度ヒエラルキーである。勝敗・成否に関わる事象ほど聴覚フィードバックの最前面に出す。

## AGENT
オーディオブスマネージャー（AudioMixer, Wwise, FMOD等）において、Event CategoryごとにPriorityとDucking/Sidechainの設定を行う。

## Why it matters
すべての音を等しく鳴らすと「音の洪水」になり、プレイヤーが今何が起きたか（勝敗や被弾）の最重要状況を瞬時に認識できなくなるため。

## Use with context
- Domains: SEミキシング, フィードバック設計, バトルシステム
- Phases: サウンド実装, バランス調整, 最終ポリッシュ
- Trigger: 新キャラクターや新アクションのSE追加時、または戦闘中の音量バランス調整時

## Agent questions
- その効果音はプレイヤーの勝敗・生死・成否に直接関わるイベントか？
- 歩行やジャンプなどの高頻度な基礎動作音が、打撃音や必殺技音を邪魔していないか？

## Suggested actions
- SE一覧を『致命的イベント』『成否判定』『自発操作』『環境・移動』に分類し、音量・プライオリティの減衰テーブルを構築する。
- 上位プライオリティ再生時に下位音をダッキングするルールを定義する。

## Review criteria
- 最大混戦時でも撃墜音・大ダメージ音が明瞭に聞き取れるか
- 低重要度の音（歩行・ジャンプ）が過度に主張していないか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
