using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace Хакатон_Auto
{
    public class HomePage : BaseTest
    {
        public HomePage()
        {
            _driver = DriverHolder.driver;
        }

        public IWebElement checkAuth = DriverHolder.driver.FindElement(By.XPath("//p[contains(.,'gustavfergusson@ukr.net')]"));
        public IWebElement sendMessageButton = DriverHolder.driver.FindElement(By.XPath("//button[contains(.,'Написати листа')]"));
        public IWebElement incomingMessagesSection = DriverHolder.driver.FindElement(By.XPath("//span[contains(.,'Вхідні')]"));


        public void ClickSendMessageButton()
        {
            sendMessageButton.Click();
        }        
        public void ClickIncomingSection()
        {
            incomingMessagesSection.Click();
        }
        public void ClickFirstMessage()
        {
            IWebElement firstMessageCheck = DriverHolder.driver.FindElement(By.XPath("//span[contains(.,'Gustav Fergusson')]"));
            firstMessageCheck.Click();
        }
    }
}
