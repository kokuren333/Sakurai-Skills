---
id: skill-mot-008
title: "キャンセルフレームとモーションブレンドの調停"
candidate_id: "SKILL-MOT-008"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# キャンセルフレームとモーションブレンドの調停

## Summary
攻撃後の硬直をキャンセルして次の動作へ移る際は、適切なブレンド時間を設定して硬さを防ぎつつ、補間が長すぎてキレを殺さないバランスを死守せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
攻撃後の硬直をキャンセルして次の動作へ移る際は、適切なブレンド時間を設定して硬さを防ぎつつ、補間が長すぎてキレを殺さないバランスを死守せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
操作の窮屈感（レスポンスの悪さ）を解消しつつ、動作の切り替わりがパキパキと壊れるのを防ぎ、かつキビキビとした手触りを維持するため。

## Use with context
- Domains: Action, Combat-System, State-Machine, Animation-Blending
- Phases: Combat-Tuning, Animation-System-Design
- Trigger: コンバットステートマシンの遷移（攻撃→移動、攻撃→ガード）およびブレンド時間を設定するとき

## Agent questions
- 技のフォロースルーのどのフレームから移動・ジャンプの入力を受け付けるか（キャンセルポイント）が明確か？
- キャンセル移行時のモーションブレンド時間が長すぎて、次の動作の初動がフニャフニャになっていないか？

## Suggested actions
- 攻撃アニメーションにCancel Window（先行入力・キャンセル可能区間）を設定する。
- キャンセル時のクロスフェード／ブレンド時間を極小（例: 2〜4フレーム程度）に制限し、素早く次のポーズへ移行させる。

## Review criteria
- 攻撃後の移動入力時に硬直の重さを感じず、かつモデルのポーズが1フレームで破綻飛翔しないこと。

## Anti-patterns
- 硬直が完全に終わるまで入力を一切遮断する設計（重すぎる）。
- あらゆる遷移に0.2秒（12F）以上の長いイージングブレンドを一律適用する設計（ぬるすぎる）。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
