# MyProject ディレクトリの作成
$projectPath = "$env:USERPROFILE\Documents\MyProject"
If (!(Test-Path -Path $projectPath)) {
    New-Item -ItemType Directory -Path $projectPath | Out-Null
}

# GitHub Issues の作成スクリプト
$issuesScript = @"
gh issue create --title 'タスク1' --body '詳細を記入' --assignee '@me' --milestone 'v1.0'
gh issue create --title 'タスク2' --body '詳細を記入' --assignee '@me' --milestone 'v1.0'
"@
$issuesScript | Out-File -Encoding utf8 "$projectPath\create_issues.ps1"

# CI/CD 設定ファイルの作成
$ciConfig = @"
name: CI Pipeline
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - name: チェックアウト
        uses: actions/checkout@v2
      - name: Python セットアップ
        uses: actions/setup-python@v2
        with:
          python-version: '3.x'
      - name: 依存関係インストール
        run: pip install -r requirements.txt
      - name: テスト実行
        run: pytest
"@
$ciConfig | Out-File -Encoding utf8 "$projectPath\ci.yml"

# deploy.yml の作成
$deployConfig = @"
name: Deploy
on: push
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - name: チェックアウト
        uses: actions/checkout@v2
      - name: SSH 経由でデプロイ
        run: |
          ssh -i ~/.ssh/id_rsa user@yourserver 'cd /your/project/path && git pull'
"@
$deployConfig | Out-File -Encoding utf8 "$projectPath\deploy.yml"
