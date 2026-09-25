---
id: skill-a07-work-persists-labor-fades
title: "苦労は忘れる 作品は残る（長期品質への妥協なきコミット）"
candidate_id: "SKILL-A07-WORK-PERSISTS-LABOR-FADES"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: quality-and-polish
---

# 苦労は忘れる 作品は残る（長期品質への妥協なきコミット）

## Summary
目先の作業負荷を軽減するための妥協を排し、何十年先も残り続ける製品品質を最優先に作り込め。

## SOURCE
開発の苦労は終われば忘れるが、作品はずっと残る。楽をするために妥協し続けると後悔する。桜井氏は数十年前に作った『夢の泉の物語』のエンディングでフラッシュではなく画面振動にしてしまったミスを今も悔やんでいる。

## GENERALIZED
一時的な開発コスト（労力、疲労）と、製品の永続的価値（ユーザー評価、ブランド資産）を正しく比較衡量し、長期的な技術的・体験的負債を排除する。

## AGENT
「このバグは滅多に起きないから放置」「この演出の違和感は微小だから無視」という妥協を検知し、修正を促すための品質ゲート。

## Why it matters
リリース後の不完全な成果物は永続的にクリエイターやスタジオの評価を毀損し、その悔恨は開発中の苦労よりも遥かに長く残るため。

## Use with context
- Domains: polishing, qa, code_review, asset_refinement
- Phases: polishing, master_submission, post_launch
- Trigger: 「時間がないから」「面倒だから」という理由で未解決の違和感・エッジケースバグをクローズしようとするとき

## Agent questions
- この妥協は、数年後にこの作品を振り返ったときに後悔しないものか？
- プレイヤーがこの違和感に気づいたとき、作品全体の評価を落とす要因にならないか？

## Suggested actions
- 妥協されそうになっている細部のクオリティ課題（演出のタイミング、フレームレートの引っかかり等）を『残存リスク』として明示化する
- 可能な限りの効率化を行った上で、最後に残る手作業の磨き込み工数を確保する提案を行う

## Review criteria
- 既知の違和感や妥協点が『仕様』として安易に放置されていないこと
- 極限まで磨き込まれた体験（フィニッシュワーク）が施されていること

## Anti-patterns
- 「もう疲れたからこの仕様でリリースしよう」と、明らかな操作性の違和感を放置してマスターアップする
- 「誰も気づかないだろう」と、エンディングや重要シーンの演出タイミング調整を端折る

## Tradeoffs and exceptions
- Tradeoff: リリース直前の精神的・身体的負荷が増加するため、最大限の自動化・効率化とセットで運用する必要がある。
- Exception: チームの健康を不可逆的に破壊するような極端なデスマーチ状態（効率化が先決）。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
