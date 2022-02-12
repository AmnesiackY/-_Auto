using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace Хакатон_Auto
{
    public class AuthorizationPage : BaseTest
    {
        public AuthorizationPage()
        {
            _driver = DriverHolder.driver;
        }

        private IWebElement loginField = DriverHolder.driver.FindElement(By.Name("login"));
        private IWebElement passwordField = DriverHolder.driver.FindElement(By.Name("password"));
        private IWebElement submitButton = DriverHolder.driver.FindElement(By.XPath("//button[@type='submit']"));
        

        public void EnterLogin(string login)
        {
            loginField.Click();
            loginField.SendKeys(login);
        }
        public void EnterPassword(string password)
        {
            passwordField.Click();
            passwordField.SendKeys(password);
        }
        public void ClickSubmitButton()
        {
            submitButton.Click();
        }
    }
}
