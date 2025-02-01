$logFilePath = "C:\Users\sony\Documents\Myproject\logfile.log"

# ログファイルの存在をチェック
if (-Not (Test-Path $logFilePath)) {
    Write-Host "ログファイルが見つかりません。作成します。"
    New-Item -Path $logFilePath -ItemType File
}

# ログファイルに「スクリプトが実行されました。」がない場合のみ書き込む
if (-Not (Get-Content -Path $logFilePath | Select-String -Pattern "スクリプトが実行されました。")) {
    Add-Content -Path $logFilePath -Value "スクリプトが実行されました。"
}
