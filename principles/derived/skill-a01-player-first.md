---
id: skill-a01-player-first
title: "遊びの仕事は遊びじゃない（プレイヤー第一の動機付け）"
candidate_id: "SKILL-A01-PLAYER-FIRST"
source_file: "../../sources/raw/A-work-attitude.md"
semantic_cluster: player-centered-design
---

# 遊びの仕事は遊びじゃない（プレイヤー第一の動機付け）

## Summary
個人の趣味嗜好や制作者都合を優先せず、『プレイヤーを楽しませること』を唯一絶対の最終判断基準とする。

## SOURCE
桜井氏は自身が得意な仕事だからゲームを作っており、自分の好み（例：カービィは初心者向け、メテオスは落ちものパズル苦手）とは無関係に課題解決としてゲームを企画する。目的は『プレイヤーを楽しませること』であり、迷ったらそこに立ち返るべきと明言。

## GENERALIZED
開発者の主観的『好き・嫌い』や実装のしやすさではなく、ターゲットプレイヤーに提供されるUXの最大化を客観的要件としてコードや仕様を決定する。

## AGENT
エージェントが自律的にコード設計や仕様提案を行う際、開発者の技術的自己満足（最新技術の無意味な採用等）に走るのを防ぐガードレールとして機能する。

## Why it matters
制作者の独りよがりなこだわりは、プレイアビリティの低下や需要との乖離を招き、商業的・体験的失敗に直結するため。

## Use with context
- Domains: game_design, ux_design, code_architecture
- Phases: concept, specification, code_review
- Trigger: 新機能の提案、仕様策定、またはUI/UXのレビューを行うとき

## Agent questions
- この変更や仕様は『プレイヤーの楽しさ・利便性』に寄与しているか、それとも実装者側の都合か？
- 自分の好みのジャンル・作法に引きずられて、ターゲット層の需要を見誤っていないか？

## Suggested actions
- 仕様書・PRの目的欄に『プレイヤーが得る体験・メリット』を明記させる
- 制作者目線でしかメリットがない複雑な仕様を検出し、簡素化または削除を提案する

## Review criteria
- 機能の存在理由が『プレイヤーへの価値提供』として説明可能であること
- 開発者の個人的好みを正当化するための仕様肥大化がないこと

## Anti-patterns
- 「自分がこの演出が好きだから」という理由だけで、スキップ不能な長尺演出を入れる
- エンジニアが最新ライブラリを使いたいという理由だけで、動作環境要件を不必要に引き上げる

## Tradeoffs and exceptions
- Tradeoff: 開発者自身の作家性・個性を押し出しにくくなるが、製品としての完成度・需要適合度は格段に向上する。
- Exception: 特定個人の強い作家性そのものが商品価値となっている極小規模インディーゲーム。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
