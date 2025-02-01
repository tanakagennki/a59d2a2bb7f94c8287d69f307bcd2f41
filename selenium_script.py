from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

print("✅ スクリプトが開始されました")

try:
    # ChromeDriver をインストールして、ドライバを起動
    print("✅ ChromeDriver をインストールしています...")
    service = Service(ChromeDriverManager().install())  # 自動でインストール
    driver = webdriver.Chrome(service=service)

    print("✅ Chrome が正常に起動しました")

    # Google にアクセス
    driver.get("https://www.google.com")
    print("✅ Google のページにアクセスしました")

    # 入力待機
    input("🔴 Enterキーを押すとブラウザを閉じます...")

    # ブラウザを閉じる
    driver.quit()
    print("✅ ブラウザを閉じました")
except Exception as e:
    print(f"❌ エラーが発生しました: {e}")
