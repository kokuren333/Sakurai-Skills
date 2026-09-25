# Sakurai-Skills Repository Completion Task

あなたは `Sakurai-Skills` repository を完成させるKnowledge Engineer兼Game Development Agent Designerです。

このrepositoryには、Google AI Studioを用いて桜井政博「ゲーム作るには」の各カテゴリ動画から抽出した構造化資料を順次配置します。

入力資料は概ね以下の構造を持っています。

- Source metadata
- 各エピソードのSkill候補
- source_claim / explicit_content
- generalized_principle
- engineer_notes / agent_interpretation
- why_it_matters
- applicable_domains
- applicable_phases
- agent_trigger
- agent_questions
- agent_actions
- agent_review_criteria
- anti_patterns
- tradeoffs
- exceptions
- examples
- 人間可読版Markdown

これらは最終Skillそのものではなく、**Skillを構築するための中間知識表現**として扱ってください。

最終目的は、Codex、Claude Code、Gemini CLI等のAIエージェントが、実際のゲーム企画・設計・実装・テスト・レビュー・磨き込み・チーム運営の際に選択的に利用できる、高品質なAgent Skills repositoryを作ることです。

---

# 0. 最重要方針

このrepositoryを、

「桜井政博の動画を要約した資料集」

にはしないでください。

目標は、

**公開されているゲーム制作知識を、AIエージェントが状況に応じて発火・参照・実行できるゲーム開発Skill systemへ変換すること**

です。

ただし原典との境界は必ず保持してください。

以下を混同しないこと。

1. `SOURCE`
   桜井政博氏が動画内で明示的に述べた内容

2. `GENERALIZED`
   SOURCEから合理的に抽象化したゲーム開発原則

3. `AGENT`
   AIエージェントへ適用するために追加した実装・運用上の解釈

AGENTレイヤーの内容を桜井氏本人の主張として表現してはいけません。

「桜井ならこうする」
「桜井流なら必ずこうする」

のような本人が明言していない推測は禁止します。

代わりに、

「この設計は principle X と整合する」
「source X から一般化すると、このレビュー観点が得られる」

と表現してください。

---

# 1. まずrepositoryを監査する

作業開始時にrepository全体を再帰的に確認してください。

確認対象:

- 既存ファイル
- Google AI Studioから投入された全カテゴリ資料
- 重複資料
- YAML
- Markdown
- JSON
- README
- SKILL.md
- AGENTS.md
- schemas
- rules
- workflows
- checklists

既存成果物を破壊的に上書きしないでください。

まず入力資料一覧とカテゴリ一覧を内部的に把握してください。

カテゴリが不足している場合でも、存在する資料だけで可能な範囲を完成させてください。

---

# 2. Raw Sourceを保存する

Google AI Studioの出力は、原則として加工前の状態も保存してください。

例:

```text
sources/
├─ raw/
│  ├─ A-work-attitude.md
│  ├─ B-game-essence.md
│  ├─ C-planning-design.md
│  └─ ...
```

ここはprovenance層です。

AI Studio出力を勝手に簡略化して唯一の原典を失わないでください。

---

# 3. Canonical Principle Layerを作る

各カテゴリ資料から抽出されたSkill候補を、一旦すべてCanonical Principleへ正規化してください。

例:

```text
principles/
├─ player-first.md
├─ protect-player-from-development-constraints.md
├─ preserve-core-concept.md
├─ rapid-prototyping.md
├─ broad-input-output.md
├─ avoid-consensus-mediocrity.md
└─ ...
```

各Principleは最低限以下を保持してください。

```yaml
id:
title:

summary:

source:
  category:
  episode:
  timestamp:

source_claim:

generalized_principle:

agent_interpretation:

why_it_matters:

domains: []

phases: []

triggers: []

questions: []

actions: []

review_criteria: []

anti_patterns: []

tradeoffs: []

exceptions: []

examples: []

relationships:
  parent: []
  children: []
  supports: []
  conflicts_with: []
  overlaps_with: []
  prerequisite_for: []
```

---

# 4. 「動画1本 = Skill 1個」にしない

ここは重要です。

AI Studio側では便宜上、各動画・各原則に `SKILL-A01-...` 等のIDが付いています。

しかし、それをそのまま最終Skillの単位として採用してはいけません。

動画単位Skillでは粒度が細かすぎます。

以下を区別してください。

### Principle

個別の知識・判断原則。

例:

- プレイヤー都合を優先する
- 開発都合をUXへ漏らさない
- コアコンセプトを維持する
- アイデア出しでは評価を遅延させる

### Skill

複数Principleを用いて、具体的な作業を実行するもの。

例:

- game-concept
- gameplay-review
- ui-ux-review
- prototype-review
- tutorial-review
- game-feel-review
- difficulty-review
- production-review
- polish-review
- team-direction
- specification-writing

PrincipleとSkillを明確に分離してください。

---

# 5. 全カテゴリ横断で重複を統合する

全Principleを比較してください。

以下の関係を検出してください。

- exact_duplicate
- near_duplicate
- parent_child
- supports
- conflicts_with
- complements
- prerequisite
- same_goal_different_context

例:

「プレイヤー第一」

と

「開発都合をプレイヤーに押し付けない」

は同一ではありません。

ただし、

```text
Player-Centered Design
├─ Player First
├─ Hide Development Constraints
├─ Respect Player Time
└─ Reduce Unnecessary Friction
```

のような親子関係になる可能性があります。

安易に情報を削除せず、

**抽象原則 → 具体原則**

へ階層化してください。

---

# 6. Principle Graphを作る

以下を生成してください。

```text
rules/
  principle-graph.yaml
```

概念的には、

```yaml
player_centered_design:
  children:
    - player_first
    - respect_player_time
    - protect_player_from_dev_constraints

creative_direction:
  children:
    - director_individuality
    - preserve_core_concept
    - avoid_consensus_mediocrity
```

のような構造です。

カテゴリ分類とPrinciple Graphは別物として扱ってください。

カテゴリは出典整理。

Graphは意味関係です。

---

# 7. 矛盾する原則を消さない

桜井氏の知見には、状況依存で緊張関係にあるものがあります。

例えば、

- 強火で一気に作れ
- 品質に妥協するな

あるいは、

- プランBを書くな
- 問題があれば仕様を柔軟に変えろ

などです。

これを矛盾として片方を削除しないでください。

代わりに、

```yaml
conflict:
  principle_a:
  principle_b:

resolution:
  context:
  phase:
  recommended_interpretation:
```

として扱ってください。

重要なのは、

**どちらが正しいかではなく、どの開発フェーズ・状況でどちらを優先するか**

です。

---

# 8. 推測でルールを強くしすぎない

AI Studio出力には、原典をAgent用に拡張した結果、かなり強い表現になっている箇所があります。

そのためCodex側で必ず再監査してください。

例えば、

- 「絶対」
- 「一切許容するな」
- 「必ず」
- 「最低5件調査」
- 「1時間以内」
- 「100%」
- 「常に」

等の閾値について、

原典が明示していない数値や強度であればAGENTレイヤーとして扱ってください。

必要に応じて、

```yaml
confidence:
  source_fidelity: high | medium | low
  agent_extension: low | medium | high
```

のようなフィールドを追加してください。

原典由来とエージェント設計上の便宜を区別します。

---

# 9. 最終Skill群を設計する

原則を整理した後、実際のAgent Skillを作ってください。

最低でも以下を検討してください。

```text
skills/
├─ game-concept/
├─ game-design-review/
├─ prototype-review/
├─ gameplay-loop-review/
├─ controls-review/
├─ game-feel-review/
├─ ui-ux-review/
├─ onboarding-tutorial-review/
├─ level-design-review/
├─ difficulty-balance-review/
├─ specification-review/
├─ presentation-review/
├─ production-review/
├─ polish-review/
├─ creative-direction/
├─ team-direction/
└─ final-sakurai-review/
```

ただし、入力された全カテゴリを解析した結果、より自然な分割があるなら変更して構いません。

Skill数を増やすこと自体を目的にしないでください。

---

# 10. 各SkillのSKILL.md

各Skillディレクトリに `SKILL.md` を作成してください。

例:

```text
skills/game-design-review/SKILL.md
```

構造は概ね以下。

```markdown
---
name: game-design-review
description: Review a game design using structured principles derived from the Sakurai game development knowledge base.
---

# Purpose

このSkillを使用する目的。

# When to use

発火条件。

# When NOT to use

不要な場面。

# Inputs

必要な資料。

例:

- game design document
- current build
- screenshots
- gameplay video
- source code
- known constraints
- target audience

# Procedure

1. Project contextを確認
2. Development phaseを判定
3. Relevant principlesをロード
4. Evidenceを収集
5. Violations / risks / strengthsを整理
6. Tradeoffを検討
7. 改善案を出す
8. 最小検証方法を提案

# Relevant principles

参照すべきprinciple ID。

# Review questions

具体的質問。

# Output format

Finding単位で:

## Finding

Observation:
Evidence:
Relevant principle:
Source confidence:
Why it matters:
Tradeoff:
Suggested change:
Smallest useful experiment:

# Guardrails

- 原典とAgent解釈を混同しない
- すべての原則を機械的に適用しない
- プロジェクトのジャンル・対象者・予算・目的を考慮する
- 原則同士の衝突を明示する
```

---

# 11. Progressive Disclosureを重視する

巨大な1つのSKILL.mdに全知識を埋め込まないでください。

AIエージェントが必要なときだけ関連知識を読む設計にします。

例:

```text
skills/game-design-review/
├─ SKILL.md
└─ references/
   ├─ player-centered-design.md
   ├─ creative-direction.md
   ├─ risk-reward.md
   └─ pacing.md
```

Skill本体は実行手順。

詳細な知識はreferences。

この構造を優先してください。

---

# 12. Universal Router Skillを作る

ルートまたは専用ディレクトリに、

```text
skills/sakurai-game-dev/SKILL.md
```

を作成してください。

これは全部の知識を直接保持するSkillではありません。

**Skill Router / Orchestrator**

です。

例えば:

```text
ユーザー要求
↓
開発フェーズ判定
↓
対象領域判定
↓
必要なSkillだけ選択
↓
必要なPrincipleだけ参照
↓
実行
```

にします。

対象領域例:

```text
concept
prototype
gameplay
controls
game-feel
ui
tutorial
level-design
balance
graphics
audio
production
team
polish
release
```

---

# 13. `/sakurai-review` 相当の統合レビューを設計する

最も重要なSkillの一つです。

ゲーム全体をレビューするとき、

すべてのPrincipleを一列にチェックしてはいけません。

最初に、

1. 開発フェーズ
2. ゲームジャンル
3. ターゲット
4. 現在の問題
5. ユーザーが今回見てほしい範囲

を認識します。

その後にRelevant Skill / Principleだけを選択します。

出力例:

```markdown
# Sakurai Review

## Project context

## Highest-impact findings

### Finding 1
Observation:
Evidence:
Relevant principle:
Source:
Interpretation level:
Impact:
Tradeoff:
Recommended experiment:

## Conflicting principles

## Things that are already working well

## Next 3 actions
```

重要度をつける場合は、

- blocking
- major
- moderate
- minor

等でよいですが、

根拠なく何でも重大扱いしないでください。

---

# 14. Lint layerを作る

静的に検出可能な原則について、

```text
lint/
```

または

```text
rules/lint-rules.yaml
```

を作ってください。

例:

```yaml
- id: SAKURAI-UX-001
  title: Development constraint leaking into UX
  principle: protect-player-from-development-constraints
  detect:
    - unexplained_wait
    - unnecessary_manual_step
    - implementation_constraint_exposed_to_player
  severity_default: warning
```

ただし、Lintは完全自動判定ではなく、

**AIレビューのヒューリスティック**

として設計してください。

---

# 15. Checklistsを作る

Principleを単純コピーせず、フェーズごとのチェックリストへ再構成します。

例:

```text
checklists/
├─ concept.md
├─ prototype.md
├─ vertical-slice.md
├─ production.md
├─ polish.md
├─ release.md
├─ ui.md
├─ tutorial.md
├─ combat.md
└─ multiplayer.md
```

質問形式を中心にします。

例:

```markdown
- この機能はプレイヤーに何を与えるのか？
- 開発都合がUXへ露出していないか？
- コアコンセプトとの接続を説明できるか？
- 初見プレイヤーでも理解できるか？
- 操作不能時間は必要か？
```

---

# 16. Workflowを作る

知識集ではなく実行手順を持たせます。

例:

```text
workflows/
├─ concept-to-prototype.md
├─ prototype-review.md
├─ design-change-decision.md
├─ playtest-feedback-review.md
├─ polish-pass.md
└─ pre-release-review.md
```

例えば `design-change-decision.md` では、

```text
問題発見
↓
即共有
↓
影響範囲確認
↓
コアコンセプト確認
↓
変更コスト確認
↓
変更しないリスク確認
↓
責任者決定
↓
最小検証
```

のように複数Principleを組み合わせます。

---

# 17. Sourcesと実行知識を分離する

最終repositoryでは、

```text
sources/
principles/
skills/
workflows/
checklists/
rules/
schemas/
```

を別レイヤーにしてください。

推奨最終形:

```text
Sakurai-Skills/
├─ README.md
├─ AGENTS.md
├─ LICENSE
│
├─ sources/
│  ├─ raw/
│  └─ index.yaml
│
├─ principles/
│  ├─ index.yaml
│  └─ *.md
│
├─ skills/
│  ├─ sakurai-game-dev/
│  │  └─ SKILL.md
│  ├─ game-design-review/
│  │  ├─ SKILL.md
│  │  └─ references/
│  ├─ ui-ux-review/
│  ├─ prototype-review/
│  └─ ...
│
├─ workflows/
│
├─ checklists/
│
├─ rules/
│  ├─ principle-graph.yaml
│  ├─ anti-patterns.yaml
│  └─ lint-rules.yaml
│
├─ schemas/
│  ├─ principle.schema.json
│  └─ source.schema.json
│
└─ tests/
```

---

# 18. Validationを実装する

可能なら簡単なvalidation scriptも作成してください。

確認事項:

- Principle ID重複なし
- 存在しないPrincipleへの参照なし
- source metadata欠落なし
- relationshipの参照切れなし
- Skillから参照されるPrincipleが存在する
- YAML / JSON schema validation
- orphan principle検出
- 未分類principle検出

使用言語はrepositoryの現状に合わせてください。

不要に巨大な依存関係を導入しないこと。

---

# 19. Testsを用意する

最低限、架空のゲーム企画を使ってSkillが有用か検証してください。

例えば:

### Case A
初心者向けアクションゲーム

### Case B
高難度コアゲーマー向けゲーム

### Case C
実験的インディー作品

同じ原則が全ケースへ同じ結論を返していないことを確認してください。

特に、

- target
- context
- genre
- development phase
- constraints

によって結果が変化することを確認します。

---

# 20. 原則を「絶対命令」にしない

これは非常に重要です。

桜井氏の知見を、

万能なゲーム制作法則

として扱わないでください。

各Principleには、

- applies_when
- tradeoffs
- exceptions
- conflicts

があります。

Skill実行時は必ずコンテキストを考慮してください。

例えば、

「プランBを書くな」

を、

- 本番インフラの障害対策
- データバックアップ
- セキュリティ
- rollback
- disaster recovery

などへ機械的に適用してはいけません。

---

# 21. Source Fidelity Audit

最終生成後、もう一度全Principleを監査してください。

特に、

```text
source_claim
generalized_principle
agent_interpretation
```

の境界を確認してください。

以下を検出:

- AIが勝手に追加した具体的数値
- 原典にはない心理学・経営学用語
- 原典より強い断言
- 誤った因果関係
- 原典例を一般法則へ過度に拡張した箇所

該当する場合は削除する必要はありません。

AGENT / GENERALIZED側へ正しく分類し直してください。

---

# 22. README

READMEでは以下を説明してください。

- このrepositoryの目的
- 「桜井政博本人を模倣するものではない」こと
- SOURCE / GENERALIZED / AGENTの3層
- repository architecture
- Skill一覧
- 利用方法
- Codex等への導入方法
- source provenance
- limitations

---

# 23. AGENTS.md

今後別のAIエージェントがrepositoryを編集しても思想が崩れないよう、ルートに `AGENTS.md` を置いてください。

最低限:

```markdown
# Core rules

1. Preserve source provenance.
2. Never present agent inference as Sakurai's own statement.
3. Prefer actionable principles over summaries.
4. Do not create one Skill per video.
5. Deduplicate across categories.
6. Preserve useful tensions between principles.
7. Skills are workflows; principles are knowledge.
8. Use progressive disclosure.
9. Consider project context before applying a principle.
10. Optimize for actual game-development use.
```

を含めてください。

---

# 24. 不要なこと

以下は禁止します。

- 各動画Markdownをそのまま `skills/` にコピー
- 動画本数と同じ数のSkillを作る
- 全原則を巨大な1ファイルに詰め込む
- 桜井氏の発言とAI推論を混同
- 出典情報の削除
- 重複Principleを放置
- すべてのゲームへ同じ判断を強制
- READMEだけ整えて実質的なSkillを作らない
- 「それっぽい名言集」にする
- 既存入力を破壊する

---

# 25. 作業完了条件

以下を満たすまで作業を続けてください。

- [ ] 全入力カテゴリを解析済み
- [ ] Raw sourceを保持
- [ ] Canonical principlesを作成
- [ ] 全カテゴリ横断で重複整理済み
- [ ] Principle Graph完成
- [ ] conflicts / tradeoffs整理済み
- [ ] 実務単位のSkillsへ再編済み
- [ ] Universal router skill完成
- [ ] `/sakurai-review` 相当の統合レビューSkill完成
- [ ] workflows完成
- [ ] checklists完成
- [ ] lint rules作成
- [ ] schemas作成
- [ ] validation成功
- [ ] test scenariosでSkillを検証
- [ ] source fidelity audit完了
- [ ] README完成
- [ ] AGENTS.md完成
- [ ] 参照切れ・重複IDなし

単にファイルを生成しただけで完了扱いにしないでください。

最終的に、

**実際のゲームrepositoryへこのSkill群を導入し、AIエージェントが企画・実装・レビューの判断補助として利用可能**

な状態を完成条件とします。

---

# 26. 最終報告

完了時には以下だけ簡潔に報告してください。

1. 作成したSkill一覧
2. Principle総数
3. 統合した重複Principle数
4. 主なPrinciple cluster
5. 実装したworkflow
6. validation / test結果
7. 原典忠実性監査で修正した代表例
8. 残っている既知の限界

途中で些細な確認を求めず、repositoryと入力資料から合理的に判断して完成まで進めてください。