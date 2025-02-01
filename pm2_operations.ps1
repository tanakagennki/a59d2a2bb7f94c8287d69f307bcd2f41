# PowerShellスクリプト: pm2_operations.ps1

# プロジェクトのディレクトリに移動（必要に応じて変更）
cd "C:\Users\sony\myproject\src"

# アプリケーションを停止
pm2 stop your-app-name

# 停止確認
pm2 status

# 必要に応じてpm2を再起動する場合
# pm2 start your-app-name
