---
id: gameplay-loop-007-obstacle-progression-cycle
title: "障害・排除・成長・進展の基本サイクルの構築"
candidate_id: "GAMEPLAY_LOOP_007_OBSTACLE_PROGRESSION_CYCLE"
source_file: "../../sources/raw/B-game-essence.md"
semantic_cluster: game-essence
---

# 障害・排除・成長・進展の基本サイクルの構築

## Summary
ゲーム進行は『障害（ストレス）→排除（解消）→報酬（成長）→進展（先へ進む）』の4ステップで循環させる。

## SOURCE
「なんで敵を倒すの？」「倒してパワーアップするためさ」「なんでパワーアップするの？」「もっと強い敵を倒すためさ」。 敵＝障害＝ストレスであり、それを排除することが解消。 さらに経験値や報酬で成長し、新たなエリアへ進展する。敵が出ないゲームでもこの4構造は必須。

## GENERALIZED
プレイヤーのモチベーションを維持するための核となる前進ループ。敵の撃破に限らず、謎解きやリソース支払いも「障害の排除」と同義である。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
このサイクルがどこかで途切れると（例: 敵を倒しても成長も進展もない）、プレイヤーは行動の動機を失う。

## Use with context
- Domains: Core Game Loop, Progression Design, RPG Systems
- Phases: Game Loop Design, Economy Tuning
- Trigger: クエスト設計、ダンジョン構造の作成、ゲームループの実装時

## Agent questions
- このタスクをクリアしたプレイヤーに『排除感』『成長感』『進展感』がそれぞれ満たされているか？

## Suggested actions
- タスク完了イベントに、進路の物理的開放（扉の解錠など）とステータス/リソース付与を連結する。

## Review criteria
- ストレス→解消→成長→進展の連鎖が切れていないかをフロー図上で確認。

## Anti-patterns
- 倒す必要も避ける必要もなく、無視して素通りできる無意味な敵の乱発。
- どれだけ作業をしても次の展開や能力強化に繋がらないデッドエンド設計。

## Tradeoffs and exceptions
- Tradeoff: 成長ループを強めすぎると数字のインフレ（レベル上げ作業）を強いることになる。
- Exception: 純粋なサンドボックス（制限のないクリエイティブモード）など、目標を自己生成する遊び。

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
