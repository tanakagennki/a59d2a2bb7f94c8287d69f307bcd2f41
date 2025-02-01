# setup_env.ps1
# 必要なパッケージや依存関係のインストールなどを行うスクリプト

# Pythonの仮想環境をアクティブにする
# 仮想環境のパスを指定
$envPath = "C:\Users\sony\Documents\MyProject\MySeleniumProject\venv\Scripts\Activate.ps1"

# 仮想環境をアクティブ化
. $envPath

# 必要なパッケージのインストール（例: Selenium）
pip install selenium
