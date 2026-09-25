---
id: tech-kb-006
title: "ふっとばし・被弾リアクションの多層パラメーター分離設計"
candidate_id: "TECH-KB-006"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: specification-and-communication
---

# ふっとばし・被弾リアクションの多層パラメーター分離設計

## Summary
ヒット時のリアクション計算を「方向（ベクトル）」「ダメージ比例倍率（影響値）」「基本底上げ値（加算値）」「完全固定値（固定値）」に分解して制御せよ。

## SOURCE
『スマブラ』のふっとばしは体力減少ではなく場外へ落とすゲーム性のため、独自の計算式を持つ。構成要素は①ベクトル（全方位個別設定、攻撃側の移動に沿わせる補正含む）、②リアクション影響値（蓄積ダメージに倍率を掛けてふっとばす値）、③リアクション加算値（ダメージに関わらず無条件に足す力）、④リアクション固定値（ダメージ不問で完全に一定のリアクションを強制する値）。連続攻撃（マリオのスーパージャンプパンチ等）の途中段は固定値にして相手が抜けないようにし、最終段のみ影響値で大きくふっとばす。

## GENERALIZED
対戦ゲームにおけるヒットリアクションは、「単一の力（Force）」で処理せず、「蓄積状況に依存するスケーリング要素」と「コンボを成立させるための固定拘束要素」を直交させて設計する。

## AGENT
格闘ゲームのノックバック、アクションゲームの怯み・打ち上げ値計算全般に応用可能な数理モデル。

## Why it matters
単一の攻撃力依存ノックバックだと、蓄積ダメージが低い時に技が当たらずコンボが繋がらない、あるいは高蓄積時に連続ヒット技の途中で相手がすっぽ抜けて反撃を受けるといった不条理が発生する。

## Use with context
- Domains: コンバット設計, 当たり判定・ダメージ処理, 格闘アクションシステム
- Phases: 戦闘システム設計, キャラクターアクション実装, 対戦バランス調整
- Trigger: 格闘・アクションゲームの攻撃判定（Hitbox）やダメージ処理の実装時

## Agent questions
- この攻撃は単発か連続ヒットか？
- 連続ヒットの場合、途中段のリアクションは固定値化されているか？
- 攻撃者の移動がノックバック方向に補正されているか？

## Suggested actions
- Hitboxデータ構造に固定リアクション値とスケーリング値の分離フィールドを作成する。
- 連続攻撃の途中段にダメージスケーリングが設定されている場合、固定値化をリコメンドする。

## Review criteria
- 多段技の途中段が固定リアクション（すっぽ抜け防止）になっていること
- ふっとばしベクトルに必要に応じた移動補正が考慮されていること

## Anti-patterns
- すべてのノックバックを `Damage * Factor` だけで計算し、低パーセントで敵が全く動かず、高パーセントで多段技が外れる。
- 攻撃判定の進行方向と逆向きに敵が飛んでしまい、追撃が不可能になる（コンボ設計の破綻）。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
