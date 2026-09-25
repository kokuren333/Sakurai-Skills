# Source fidelity audit

All supplied source files are AI Studio intermediate notes, not original video transcripts. Fields called explicit/source in those notes remain secondary summaries and are not quote-verified. Extraction separates SOURCE, GENERALIZED, and AGENT content in principles/catalog.json.

## Representative transformations
### SKILL-A01-PLAYER-FIRST — 遊びの仕事は遊びじゃない（プレイヤー第一の動機付け）

- SOURCE summary field: 桜井氏は自身が得意な仕事だからゲームを作っており、自分の好み（例：カービィは初心者向け、メテオスは落ちものパズル苦手）とは無関係に課題解決としてゲームを企画する。目的は『プレイヤーを楽しませること』であり、迷ったらそこに立ち返るべきと明言。
- GENERALIZED field: 開発者の主観的『好き・嫌い』や実装のしやすさではなく、ターゲットプレイヤーに提供されるUXの最大化を客観的要件としてコードや仕様を決定する。
- AGENT field: エージェントが自律的にコード設計や仕様提案を行う際、開発者の技術的自己満足（最新技術の無意味な採用等）に走るのを防ぐガードレールとして機能する。
- Treatment: retained at raw/A-work-attitude.md; thresholds and engineering interpretations are not promoted to verified source wording.

### SKILL-A11-NO-PLAN-B — プランBに頼るな（必殺の一本勝負）

- SOURCE summary field: 企画書で『プランB』を書くのはやめた方がいい。二度出しをせず、総合的に見て最も良いと思う案を責任を持って選ぶ。提案は後からチーム内で受ければ十分。
- GENERALIZED field: 意思決定者の責任逃れ（選択肢の丸投げ）を禁じ、コミットメントの純度を高めることで、チーム全体の検討リソースを最善案の実現に集中させる。
- AGENT field: AIがアーキテクチャ設計や機能実装を提案する際、「A案もありますがB案もあります」とお茶を濁さず、「A案を推奨し、その理由と実装を提示する」と断定させる規律。
- Treatment: retained at raw/A-work-attitude.md; thresholds and engineering interpretations are not promoted to verified source wording.

### SKILL-PLAN-025 — 初心者導入における「手加減」の礼儀と敷居低減

- SOURCE summary field: No explicit claim field extracted; consult raw source. Exact attribution is unverified.
- GENERALIZED field: 「オンボーディングにおける心理的安全性（Psychological Safety）の確保」。初心者が自身の無力さに絶望してゲームを諦める（見切りをつける）のを防ぐため、不可視のセーフティネットや手加減システムを組み込む。
- AGENT field: 『マリオカート8 デラックス』の「ハンドルアシスト（コースアウト防止）」や「オートアクセル」のように、デフォルトでONになっており、上級者が任意で外せるUI設計が極めて有効。
- Treatment: retained at raw/C-planning-design.md; thresholds and engineering interpretations are not promoted to verified source wording.

### UI-002 — 非プレイ時間の任意スキップ・ポーズの完全保証

- SOURCE summary field: No explicit claim field extracted; consult raw source. Exact attribution is unverified.
- GENERALIZED field: 会社ロゴ、オープニング、イベントデモ、ムービーなど、プレイヤーが操作していない時間は例外なく任意にスキップおよび一時停止できるようにする。
- AGENT field: Apply as a contextual review heuristic, not an absolute rule.
- Treatment: retained at raw/J-ui.md; thresholds and engineering interpretations are not promoted to verified source wording.

### FX-009-FLASHING-CONTRAST-BALANCING — フラッシングは明暗の混在とカメラ距離に応じた強度スケーリングを行え

- SOURCE summary field: フラッシング（画面やキャラを光らせる）。最近は安全レギュレーションが厳しい。白色加算のみだとコントラストが消えてのっぺりし、白背景で見えない。スマブラSPでは『加算色＋影』を入れて明暗を内包。さらにカメラ距離によってフラッシングの強さを変えている（近いと弱く、遠いと強く）。
- GENERALIZED field: 画面やキャラを点滅させるフラッシングは、白一色を避け影や暗色を内包させ、カメラ距離に応じてピカピカ面積を制御せよ。
- AGENT field: アクセシビリティ基準（Photosensitive Epilepsy Analysis Tool: PEAT）への準拠と、打撃・無敵の手応え表現を両立するための現代的標準解。
- Treatment: retained at raw/H-effects.md; thresholds and engineering interpretations are not promoted to verified source wording.

### TECH-DEBUG-008 — 開発効率を極大化する単一コントローラー完結型デバッグモードの構築

- SOURCE summary field: デバッグモード（開発モード）では、全キャラクターの体力を所定値（0%, 100%, 999%など）に一瞬で変更したり、ふっとび軌跡を可視化したり、画面静止・コマ送り・向き変更・カメラ自由移動を行える。別コントローラーをデバッグ用として割り当てる方式もあるが、コントローラーを持ち替える手間がかかるため、通常持っている1つのコントローラーで同時押しなどを駆使して完結させる操作形態を強く推奨する。製品版では機能ごと抜くのが一般的だが、一部はトレーニングモード等に昇華される。
- GENERALIZED field: 検証・テスト操作のインターフェースコスト（機材持ち替え、画面切り替え）をゼロに近づける。開発者が思考を中断せずにその場で即座にエッジケースを再現できる環境を提供する。
- AGENT field: インゲーム開発用コマンド（チートコマンド、デバッグメニュー）の入力マッピング設計。開発ビルドと製品ビルドのプリプロセッサ分離。
- Treatment: retained at raw/K-programming-technical.md; thresholds and engineering interpretations are not promoted to verified source wording.

## Full-candidate risk scan

A token scan was run over SOURCE/GENERALIZED/AGENT extracts for every candidate. These are review flags, not automatic findings about the original video.
- source_absolute_terms flagged: 15 / 177
  Candidate IDs: SKILL-A14-INTERNAL-PRESSURE-COMPRESSION, SKILL-A17-UNWAVERING-CORE-CONCEPT, SKILL-A22-NEVER-FIGHT-IN-INDUSTRY, GAMEPLAY_PHYSICS_006_CONTRASTING_ELEMENTS, TM-002, TM-006, TM-007, TM-011, SKILL-GFX-011, SKILL-GFX-012, SOUND-003, TECH-KB-006, PR-002, PR-006, PR-007
- generalized_absolute_terms flagged: 14 / 177
  Candidate IDs: SKILL-A18-COMPETITION-AND-ABUNDANCE, SKILL-A21-DIVERGENT-ASSOCIATION-FOR-IDEAS, SKILL-A22-NEVER-FIGHT-IN-INDUSTRY, GAMEPLAY_BALANCE_011_DIFFICULTY_HILL_AND_VALLEY, GAMEPLAY_ACCESSIBILITY_013_FAILSAFE_OVER_PERFECTION, GAMEPLAY_TESTING_014_DEVELOPER_BIAS_HANDICAP, SKILL-PLAN-003, SKILL-PLAN-022, TM-010, TM-011, SKILL-GFX-002, SKILL-GFX-004, concept_anti_combo_adlib_combat, concept_all_star_asset_pipeline_inheritance
- agent_absolute_terms flagged: 11 / 177
  Candidate IDs: SKILL-A19-WORDS-SHAPE-REALITY, SKILL-PLAN-011, SKILL-PLAN-012, SKILL-PLAN-019, TM-002, SKILL-GFX-004, SOUND-012, SOUND-014, PR-003, concept_anti_combo_adlib_combat, concept_counter_trend_rich_experience
- source_numeric_thresholds flagged: 13 / 177
  Candidate IDs: SKILL-A10-EFFORTLESS-CONTINUITY, GAMEPLAY_BALANCE_010_GAMEPLAY_VS_ACCESSIBILITY, SPEC-015, SPEC-018, TM-008, SKILL-GFX-005, FX-007-SLASH-TRAIL-METHODOLOGY, SOUND-006, SOUND-007, SOUND-013, TECH-PARAM-002, TECH-DEBUG-008, PR-009
- generalized_numeric_thresholds flagged: 4 / 177
  Candidate IDs: SKILL-PLAN-023, TM-006, PR-002, PR-006
- agent_numeric_thresholds flagged: 7 / 177
  Candidate IDs: SKILL-A21-DIVERGENT-ASSOCIATION-FOR-IDEAS, SKILL-PLAN-002, SKILL-PLAN-010, SKILL-GFX-005, SOUND-007, SOUND-009, PR-007
- technical_or_causal_terms_in_generalized_or_agent flagged: 22 / 177
  Candidate IDs: SKILL-A01-PLAYER-FIRST, SKILL-A03-PLAYER-PERSPECTIVE-DEFENSE, SKILL-A05-HIGH-DENSITY-SPEC-FORMAT, SKILL-A09-JUST-DO-IT-IMMEDIATELY, SKILL-A16-HARNESS-NEGATIVE-SUGGESTION, GAMEPLAY_CORE_002_STRESS_AND_RELEASE, SKILL-PLAN-012, SKILL-PLAN-015, SKILL-PLAN-017, SKILL-PLAN-020, SKILL-PLAN-025, TM-001, TM-011, SKILL-GFX-001, SKILL-GFX-003, SKILL-GFX-004, SKILL-GFX-007, SKILL-GFX-008, SKILL-GFX-011, TECH-DOC-003, concept_omnibus_format_against_fatigue, concept_leverage_known_ip_for_novel_mechanics
- Explicit/source field absent in supplied notes: 55 / 177; these use an unverified-source placeholder and retain the raw source link.
## Audit limits

- Structured fields in AI Studio notes are preserved and layer-labeled, but source fidelity cannot be independently established without checking original videos.
- Some candidate records lack explicit-source fields; these are marked low confidence and point to the raw source instead of fabricating a quote.
- Exact URLs and episode timestamps are absent or incomplete in the supplied material.
