---
id: skill-mot-005
title: "フォロースルー軌道の非対称化（行きの軌跡をなぞらない）"
candidate_id: "SKILL-MOT-005"
source_file: "../../sources/raw/G-motion.md"
semantic_cluster: animation-and-motion
---

# フォロースルー軌道の非対称化（行きの軌跡をなぞらない）

## Summary
攻撃後のフォロースルー（戻り動作）は、行きと同じ軌跡を往復させず、別軌道を通すことで硬直時間を有効に使った豊かな余韻を演出せよ。

## SOURCE
No explicit claim field extracted; consult raw source. Exact attribution is unverified.

## GENERALIZED
攻撃後のフォロースルー（戻り動作）は、行きと同じ軌跡を往復させず、別軌道を通すことで硬直時間を有効に使った豊かな余韻を演出せよ。

## AGENT
Apply as a contextual review heuristic, not an absolute rule.

## Why it matters
攻撃後の硬直時間（フォロースルー）が退屈または機械的になり、キャラクターの生きた躍動感が失われるのを防ぐため。

## Use with context
- Domains: 3D-Animation, Character-Design, Combat-Feel
- Phases: Animation-Polishing, Combat-Design
- Trigger: 攻撃モーションのリカバリー（後隙・フォロースルー）のキーフレームを配置・レビューするとき

## Agent questions
- 振り抜いた腕や足が、放った時と全く同じ空間を通って待機姿勢に戻っていないか？
- 遠心力や反動を逃がすための弧（円弧・楕円軌道）が描かれているか？

## Suggested actions
- フォロースルーの戻り軌道に外回りのオフセットをかけ、行きと戻りの軌跡を分離する。
- 待機ポーズに戻るギリギリまで、攻撃の余韻を感じさせる脱力・構え直しポーズを維持させる。

## Review criteria
- 3Dビューポートで軌跡（Trajectory）を表示した際、行きと戻りが重ならずループまたは楕円を描いていること。

## Anti-patterns
- 攻撃の頂点フレームから待機フレームへ単にリバース補間をかけること。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
