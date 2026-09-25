---
id: sound-003
title: "低スペック家庭用環境を基準としたマルチ環境サウンドチェック"
candidate_id: "SOUND-003"
source_file: "../../sources/raw/I-sound.md"
semantic_cluster: audio-and-music
---

# 低スペック家庭用環境を基準としたマルチ環境サウンドチェック

## Summary
高品位スタジオスピーカーだけでなく、安価なテレビや小型モニタなど最も普及している劣悪な再生環境で音響検証を行う。

## SOURCE
サウンドチェックはヘッドフォン、PCスピーカー、チープなテレビモニタなど複数の環境で必ず聞き比べる。チープなテレビは低音が抜けやすく迫力不足になりがちだが、最も普及している。スタジオの高精度環境だけで繊細に作り込みすぎると民生品で何も聞こえなくなる。

## GENERALIZED
エンドユーザーの最低保証環境（最頻環境）に寄り添ってマスタリングする。高域・中域の輪郭を立て、低音に依存しすぎないサウンドプロファイルを作る。

## AGENT
Switch本体スピーカーは携帯時に消音プレイされることも多いため過度な最適化は不要だが、据置TV出力時の貧弱スピーカー耐性は必須。

## Why it matters
開発環境（高級モニタースピーカー）で完璧に聞こえる音が、ユーザーの過半数が使うテレビや携帯機で「スカスカで聞き取れない」状態になるのを防ぐため。

## Use with context
- Domains: マスタリング, QA・デバッグ, プラットフォーム最適化
- Phases: サウンドミキシング, 最終検証, リリース前QA
- Trigger: サウンドアセットの最終ミックス、またはハードウェア向けビルド作成時

## Agent questions
- 低音カットフィルターを通しても、そのSE/BGMの存在感や輪郭が保たれているか？
- 安価な内蔵スピーカー環境で台詞や重要SEが埋もれていないか？

## Suggested actions
- ローエンドTV・ポータブル機器をシミュレートするEQプリセット（低域減衰・中域強調）を通して再生確認を行う。
- 検証用モニタリング環境（ヘッドフォン/標準PC/チープTV）のチェックリストを作成する。

## Review criteria
- 低音再生能力のないチープスピーカーでもアタック感と音の識別が可能か

## Anti-patterns

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
