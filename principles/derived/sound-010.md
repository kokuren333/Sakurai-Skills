---
id: sound-010
title: "主観的オノマトペを排除した客観的・機能的サウンド指示"
candidate_id: "SOUND-010"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# 主観的オノマトペを排除した客観的・機能的サウンド指示

## Summary
効果音の発注・修正指示では「ガキッ」「ボコッ」等の擬音を避け、具体的な周波数・アタック・機能要件や参考リンクで伝える。

## SOURCE
メール等で『ガキッ』『ボコッ』と書いても、書いた人の脳内で鳴っている音は伝わらない。擬音指示は避けるべき。具体的に『アタック強め』『ジェット機のような音』『YouTubeのこのリンクの音』など客観的例示で指示する。ただし、目的（ゲームプレイ上の役割）に合っていれば、ディレクターの想定と違っていても結果が良い音なら採用する。

## GENERALIZED
音響の言語化は主観的修辞（オノマトペ）から客観的パラメータ（エンベロープ、帯域、質感、機能目的）へと変換して伝達する。目的ドリブンであれば偶発的良案も許容する。

## AGENT
サウンド指示チケットには「発生タイミング」「持続時間」「周波数帯域の希望」「ゲーム上の重要度（SOUND-002準拠）」「参照URL/アセット」を構造化して記載する。

## Why it matters
オノマトペによる指示は個人の主観的解釈に依存し、サウンドクリエイターとの間でリテイクの無限ループを発生させるため。

## Use with context
- Domains: ディレクション, タスク起票, コミュニケーション
- Phases: サウンド発注, アセットレビュー
- Trigger: サウンドチームへのSE発注書作成、またはリテイクフィードバック起票時

## Agent questions
- 指示文の中にクリエイターによって解釈がブレる擬音語（バキューン、ドカッ等）が含まれていないか？
- その音がゲーム内で果たすべき機能（敵のガードを崩した合図等）が明記されているか？

## Suggested actions
- 擬音表現を検知し、「アタックの立ち上がり速度」「低域の量感」「具体的な類似音のURL」に書き換える。
- 『結果が想定と違ってもゲーム目的に合致していれば合格とする』判断基準を保持する。

## Review criteria
- 音響エンジニアが迷わず波形パラメータやシンセ音色を想起できる指示になっているか

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
