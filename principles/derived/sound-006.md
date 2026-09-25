---
id: sound-006
title: "プレイテンポを妨げないミニマルボイス設計と収録プロセスの確立"
candidate_id: "SOUND-006"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# プレイテンポを妨げないミニマルボイス設計と収録プロセスの確立

## Summary
アクション中のボイスは頻度を控えめ・短小にして没入感を保ち、台本は縦書きの標準様式で原作声優・関係者と連携して収録する。

## SOURCE
アクション対戦中の長台詞や頻繁な喋りは没入感を削ぐため短く控えめにする。声のバッティング（かぶり）やキャラクター性の重複（野獣系等）に配慮する。台本は一般的な体裁（縦書き）で書き、技ごとの掛け声（ハッ、フッ等）も網羅する。1ファイターの収録は1〜2時間程度だが編集・調整に膨大な工数がかかる。

## GENERALIZED
ボイスは音響情報の中で最も人間の耳に強く認識されるため、過剰な発話は他のすべてのSE・BGMをマスクする。高頻度アクションでは短い気合・単語に絞る。

## AGENT
ボイス再生には同時発声数リミッター（Voice Stealing/Cooldown）を設定し、同一キャラが短時間に連続発声するのを抑制する。

## Why it matters
戦闘中にキャラクターが喋りすぎるとうるさく感じられ、操作と画面への集中が途切れてしまうため。

## Use with context
- Domains: ボイス収録, キャラクター演出, 台本作成
- Phases: 仕様策定, キャスティング, 音声収録・実装
- Trigger: キャラクターボイスの仕様書・台本作成、またはボイス再生トリガー実装時

## Agent questions
- 戦闘中に台詞が長すぎて次のアクションと重なっていないか？
- 攻撃や被弾のたびに100%発声して耳障りになっていないか（確率制御されているか）？

## Suggested actions
- バトルボイスを「1音節〜短単語（ハッ、いけっ、等）」に圧縮し、長台詞はアピールや勝利画面に限定する。
- ボイス台本に攻撃・ダメージ・ジャンプ等の記号音（息遣い）を明記し、原作音源をリファレンスとして添付する。

## Review criteria
- 連撃中や多人数戦でボイスが連続再生されても不快感がないか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
