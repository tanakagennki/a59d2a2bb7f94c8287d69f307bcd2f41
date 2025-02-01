using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace MySeleniumProject
{
    class Program
    {
        static void Main(string[] args)
        {
            // ChromeDriverのインスタンスを作成
            IWebDriver driver = new ChromeDriver();

            // Googleのウェブページを開く
            driver.Navigate().GoToUrl("https://www.google.com");

            // 終了処理
            driver.Quit();
        }
    }
}
