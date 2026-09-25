---
id: sound-007
title: "原曲主旋律の同一性を堅持した対戦特化アレンジ設計"
candidate_id: "SOUND-007"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# 原曲主旋律の同一性を堅持した対戦特化アレンジ設計

## Summary
名曲のアレンジは主旋律（メロディ）の同一性を絶対に崩さず、対戦時間（約2分半）に合わせた展開とループを構築する。

## SOURCE
アレンジャーに自由にさせすぎて別物の曲になるとファンはがっかりする。口ずさめば原曲と同じになる主旋律を維持することが最重要。スマブラのアレンジ曲は対戦（時間制2分〜2分半）を想定し、カウントダウンに合うイントロ、メイン提示、転調・抑揚ある展開、そして2分半少し手前でループ頭に戻る構成を基本とする。

## GENERALIZED
アレンジの価値は「変形」ではなく「原曲の持つエモーションの再提示・現代的強化」にある。テンポ感やバッキングをゲーム向けに変えても、核となるメロディラインは不可侵とする。

## AGENT
BGMトラックのループポイント設定において、イントロ通過後のLoop StartからLoop Endまでの尺を試合標準時間（例：150秒）と同期させる。

## Why it matters
プレイヤーはその楽曲固有の旋律に愛着を持っており、主旋律が崩されると「偽物」と認識されて体験の質が著しく低下するため。

## Use with context
- Domains: BGMアレンジ, IPコラボレーション, 対戦楽曲構成
- Phases: 楽曲発注, 監修, BGM実装
- Trigger: 過去作BGMのアレンジ発注、監修、または対戦用BGMのループ設計時

## Agent questions
- アレンジ曲のメロディラインを鼻歌で歌ったとき、原曲と完全に一致するか？
- 試合時間（約2分半）の中でイントロ→展開→クライマックス→ループが綺麗に完結しているか？

## Suggested actions
- コンポーザーへの発注指示書に『主旋律の変形禁止』と『対戦試合時間に合わせた構成（起承転結とループ時間）』を明記する。
- アレンジ提出物の主旋律を原曲と波形/MIDIレベルで照合し、乖離がないか検収する。

## Review criteria
- 原曲ファンが聴いて即座にあの曲だと識別できるか
- 対戦の盛り上がりと楽曲の展開（抑揚）がリンクしているか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
