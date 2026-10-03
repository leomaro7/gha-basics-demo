# gha-basics-demo

GitHub Actions の基本を「actionlint → push → `gh run watch` → `gh run view --log-failed`」のサイクルで学ぶサンプルです。

| ワークフロー | 学べること |
| --- | --- |
| `.github/workflows/hello.yml` | トリガー（`push` / `workflow_dispatch`）、コンテキスト（`github.*` / `runner.*`） |
| `.github/workflows/ci.yml` | matrix で複数 OS テスト、`needs` によるジョブの依存関係、ジョブサマリー |
| `.github/workflows/aws.yml` | OIDC で AWS の IAM ロールを引き受ける（アクセスキー不要） |

`aws.yml` を動かすには、IAM ロールを作成し、その ARN をリポジトリ変数 `AWS_ROLE_ARN` に登録してください。2026-07-15 以降に作成したリポジトリでは、信頼ポリシーの `sub` を `repo:<owner>@<owner_id>/<repo>@<repo_id>:ref:refs/heads/main` 形式にする必要があります。
