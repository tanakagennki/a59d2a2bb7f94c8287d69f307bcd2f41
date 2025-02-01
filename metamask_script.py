# 必要なモジュールをインポート
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager

# WebDriverのサービスを設定
service = Service(executable_path=ChromeDriverManager().install())

# ChromeのWebDriverを作成
driver = webdriver.Chrome(service=service)

# 以降はスクリプトの内容に従って処理を続けます
