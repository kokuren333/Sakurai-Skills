---
id: skill-gfx-011
title: "不規則性の設計（コピペ感・規則性の破壊）"
candidate_id: "SKILL-GFX-011"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# 不規則性の設計（コピペ感・規則性の破壊）

## Summary
破壊表現や自然物の造形において、規則的なパターンやコピペ（鍾乳石のような均一なギザギザ、等間隔の柱）を徹底的に排除し、ランダムで説得力のある不規則性を構築する。

## SOURCE
【明示】三島道場ステージの壁破壊の監修で非常に手こずった。最初に上がった絵は板の割れ目が糸ノコで切ったように規則的で、ギザギザが鍾乳石のように丸く一定だった。また破壊後に残る3本の柱が等間隔で規則的に並んでいた。これらを崩し、板の面を保ちつつ手前と奥でギザギザを不規則にし、破片の高さや間隔をバラバラにするよう何度も監修を重ねた。均一な断面やコピペは破壊の説得力を著しく落とす。

## GENERALIZED
【一般化】自然物や破壊現象に幾何学的な規則性（等ピッチ、同形状の繰り返し）が現れると、人間の脳は即座に『作り物（CGのコピペ）』と見抜く。非周期性・不均一性を意図的に設計せよ。

## AGENT
【補足】プロシージャル生成（破壊シミュレーション等）の結果をそのまま使わず、視覚的なシルエットとして美しく自然に見えるよう手動での頂点調整・間引きを行う。

## Why it matters


## Use with context
- Domains: 3Dモデリング, 背景美術, 破壊エフェクト, レベルデザイン
- Phases: アセット制作, モデリング監修, ポリッシュ
- Trigger: 破壊可能オブジェクトのモデリング、自然地形（岩肌・断崖）のメッシュ生成時

## Agent questions
- エッジの分割や突起の間隔に周期的なパターン（コピペ）が残っていないか？
- 素材の物理的性質に合致した割れ方になっているか？

## Suggested actions
- メッシュの頂点座標ヒストグラムを検査し、等間隔に並んでいる頂点群にパーリンノイズ等の揺らぎを付加する。
- 断面のシルエットを抽出し、凸凹のピッチが単調でないことを検証する。

## Review criteria
- 遠目から見た際にも、自然かつダイナミックに破壊された実感が得られること。

## Anti-patterns
- テクスチャやメッシュをコピペして反転しただけで、一目でパターンが認識できてしまう破壊表現。
- 木製の壁なのに、金属のようにグニャグニャ曲がっていたり、プラスチックのように丸く割れている。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
