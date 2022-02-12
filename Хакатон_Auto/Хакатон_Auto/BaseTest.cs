using System;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium;

namespace Хакатон_Auto
{
    public class BaseTest : IDisposable
    {
        protected IWebDriver _driver;

        public void Dispose()
        {
            _driver.Quit();
        }
        public IWebDriver StartDriverWithUrl(string url)
        {
            _driver = new ChromeDriver();
            _driver.Manage().Window.Maximize();
            _driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(5);
            _driver.Navigate().GoToUrl(url);
            return _driver;
        }
    }
}