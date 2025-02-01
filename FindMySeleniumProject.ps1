# 検索開始のルートディレクトリを設定（例: C:\）
$rootDir = "C:\"

# "MySeleniumProject" フォルダを探す
$searchResult = Get-ChildItem -Path $rootDir -Recurse -Directory -Force | Where-Object { $_.Name -eq "MySeleniumProject" }

# 見つかったフォルダを表示
if (Test-Path "C:\Users\sony\Documents\MyProject\MySeleniumProject") {
    Write-Host "'MySeleniumProject' フォルダが見つかりました。"
} else {
    Write-Host "'MySeleniumProject' フォルダが見つかりませんでした。"
}
