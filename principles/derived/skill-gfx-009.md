---
id: skill-gfx-009
title: "モーションブラーの適切な制御（可読性とダイナミズムの両立）"
candidate_id: "SKILL-GFX-009"
source_file: "../../sources/raw/F-graphics.md"
semantic_cluster: graphics-and-visual-design
---

# モーションブラーの適切な制御（可読性とダイナミズムの両立）

## Summary
モーションブラーはコマ送り感を減らし滑らかさとスピード感を与えるが、過剰にかけると画面がボヤけて可読性を著しく損なうため、カメラやオブジェクト単位で厳格に制御し、プレイヤーによるOFF/強度調整オプションを必ず設ける。

## SOURCE
【明示】ブラーとは動いているときの残像表現。あるコマと次のコマの間を埋め、コマ送り感を減らしてダイナミックにする。手法には手描きで描いてしまう方法（テクスチャ差し替え）とハードウェア計算でつける方法がある。『カービィのエアライド』のホイールや『スマブラSP』の汽車の車輪は手描きブラーを入れている。ただし人為的なブラーはやりすぎると画面がボヤボヤして違和感が強くなり、何が起きているか判別不能になる。スタッフ間でも意見が分かれやすいため、オプションで調整できるようにするのが望ましい。

## GENERALIZED
【一般化】ポストプロセスのモーションブラーは実写映画的な質感を付与するが、競技性の高いアクションゲームや視認性が命のゲームでは致命的なノイズとなる。動的ブラーとテクスチャブラー（ベイクドブラー）を使い分ける。

## AGENT
【補足】カメラブラー（カメラ回転時の全体ブラー）とオプティカルフローブラー（オブジェクト移動ブラー）を分離し、カメラブラーは弱めまたはOFFをデフォルト推奨とする。

## Why it matters


## Use with context
- Domains: ポストプロセス, カメラ設計, アニメーション, グラフィック設定
- Phases: ポストエフェクト実装, オプション機能設計, プレイフィール調整
- Trigger: ポストプロセスパイプライン構築時、カメラコントローラー実装時、グラフィック設定画面設計時

## Agent questions
- 高速戦闘中にモーションブラーがターゲットの視認を妨害していないか？
- 設定UIにブラー調整項目が含まれているか？

## Suggested actions
- PostProcessingボリューム内のMotion Blur強度をデフォルトで控えめ（0.2〜0.4程度）に設定する。
- SettingsManagerにMotionBlurEnabledフラグをバインドするコードを生成する。

## Review criteria
- 素早い視点移動時でも重要なゲーム情報（敵の予備動作、UI、足場）が識別可能であること。

## Anti-patterns
- 強すぎるフルスクリーン・モーションブラーを強制し、プレイヤーに3D酔いや視認性の悪化を引き起こす。
- 高速回転する車輪のスポークが静止して逆回転しているように見えてしまう（ストロボ効果の放置）。

## Tradeoffs and exceptions
- Tradeoff: 
- Exception: 

## Provenance boundary
SOURCE is extracted from an AI Studio intermediate note, not a verified quotation. Confirm wording and timestamps against the original video before citation.
