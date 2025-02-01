from selenium import webdriver

# WebDriverのパスを設定（実際のchromedriver.exeのパスに変更してください）
driver = webdriver.Chrome(executable_path=r"C:\path\to\chromedriver.exe")

# 任意のURLを開く
driver.get('https://www.example.com')

# 何らかの操作を実行（ここでは例としてページタイトルを表示）
print(driver.title)

# 操作完了後、ブラウザを閉じる
driver.quit()
