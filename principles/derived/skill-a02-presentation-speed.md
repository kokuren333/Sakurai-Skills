---
id: skill-a02-presentation-speed
title: "プレゼンはスピード（情報の高密度・高速伝達）"
candidate_id: "SKILL-A02-PRESENTATION-SPEED"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: marketing-and-presentation
---

# プレゼンはスピード（情報の高密度・高速伝達）

## Summary
説明資料や提案は贅肉を削ぎ落とし、1つの主題に対して最小限の文字と図でテンポよく濃密に伝えよ。

## SOURCE
プレゼンはスピードに他ならない。ぜい肉を削ぎ落とし、必要なことだけ伝える。意図や第2案は不要。短くある必要はなく、テンポよく濃密に進めることが要点。

## GENERALIZED
情報伝達コスト（トークン数、スライド枚数、読解時間）を最小化しつつ、受信者が即座にイメージを共有できる高密度フォーマットを維持する。

## AGENT
AIエージェントが出力する設計ドキュメントやPRの説明文において、冗長な背景説明を排し、結論と要点のみを箇条書きやダイアグラムで提示させる規則。

## Why it matters
長大な説明や冗長な資料は相手の認知リソースを奪い、本質的な議論や意思決定のスピードを著しく阻害するため。

## Use with context
- Domains: documentation, spec_writing, team_communication
- Phases: pitch, specification, pull_request
- Trigger: 企画書、設計書、PR説明文、またはチーム向け提案メッセージを作成するとき

## Agent questions
- この説明文から削れる贅肉（前置き、言い訳、不要な背景）はないか？
- 1つの論点に対して、1枚の画像/図と2〜3行のテキストで表現できているか？

## Suggested actions
- 提案ドキュメントの文章を要約し、1スライド/1セクションにつき『図1枚＋テキスト2行以内』の構成に整形する
- 不必要な『第2案（プランB）』や『自己弁護的な意図説明』を本文から削除する

## Review criteria
- パッと見て5秒以内にコアアイデアが把握できる構造になっていること
- 文字の羅列をただ読み上げるような冗長な記述がないこと

## Anti-patterns
- スライドに長文を敷き詰め、それをそのまま読み上げるプレゼン
- PRの説明文に実装意図の哲学を長々と語り、肝心の変更内容が埋もれている状態

## Tradeoffs and exceptions
- Tradeoff: 文脈やニュアンスが削ぎ落とされるリスクがあるが、意思決定スピードが最大化される。
- Exception: 法務チェック、契約書、安全基準など厳密な文言定義が要求されるドキュメント。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
