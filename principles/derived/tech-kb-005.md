---
id: tech-kb-005
title: "手触り（ゲームフィール）を評価するための最小物理・入力プロトタイピング"
candidate_id: "TECH-KB-005"
source_file: "../../sources/raw/K-programming-technical.md"
semantic_cluster: controls-and-response
---

# 手触り（ゲームフィール）を評価するための最小物理・入力プロトタイピング

## Summary
最小限のコードと表示機能を用いて、慣性・速度・応答性などの「手触り」を最優先で検証できる極小プロトタイプを組め。

## SOURCE
桜井氏の原点である『ファミリーベーシック』は、RAM容量がわずか2KB（約2000文字）だったが、スプライト制御（SPRITE, MOVE命令）により高速で滑らかなキャラ操作が可能だった。自身のBASICプログラム（コントローラー入力、慣性力計算、8方向移動）を通じて、「慣性がどのように操作の手触りに影響を与えるか」を肌で学んだことが、後の『星のカービィ』や『スマブラ』の開発に直結した。

## GENERALIZED
グラフィックや複雑なシステムを組む前に、最もコアとなる「操作入力に対するオブジェクトの移動・慣性・レスポンス」を極小環境で実装し、気持ち良さを評価・検証する。

## AGENT
ゲームデザインにおける「ゲームフィール（手触り）」の初期検証フェーズ。フレームレート安定性と入力遅延の最小化が前提となる。

## Why it matters
手触りが悪いコアメカニクスの上にどれほど豪華なグラフィックや仕様を重ねても、動かして遊ぶ楽しさの根本的な欠陥は隠せない。

## Use with context
- Domains: キャラ操作設計, ゲームフィール, 物理シミュレーション, プロトタイピング
- Phases: 企画初期, プロトタイピング
- Trigger: キャラクターコントローラーの新規作成、基本移動ロジックの実装時

## Agent questions
- この移動ロジックは入力に対するレスポンスと慣性のバランスが取れているか？
- 最小コードで手触りを即座にテストできる仕組みになっているか？

## Suggested actions
- 入力加速度、摩擦係数、最高速度を外部から即座に弄れるプロトタイプ用スクリプトを生成する。

## Review criteria
- 入力から挙動反映までのレスポンスが明確であること
- 加減速の減速・慣性パラメーターが調整可能になっていること

## Anti-patterns
- モデルやアニメーションが完成するまで操作性の検証を後回しにする。
- 物理エンジン（Rigidbody等）のデフォルト挙動に任せきりにし、独自の入力レスポンスや手触りの味付けをしない。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
