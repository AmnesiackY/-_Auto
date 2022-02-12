using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Хакатон_Auto
{
    public class MessageBox : BaseTest
    {
        public MessageBox()
        {
            _driver = DriverHolder.driver;
        }



        public void EnterRecipient(string p0)
        {
            IWebElement recipient = DriverHolder.driver.FindElement(By.Name("toFieldInput"));
            //recipient.Click();

            recipient.SendKeys(p0);
        }
        public void EnterThemeMessage(string p0)
        {
            IWebElement themeMessage = DriverHolder.driver.FindElement(By.Name("subject"));
            //themeMessage.Click();
            themeMessage.SendKeys(p0);
        }
        public void EnterTextMessage(string p0)
        {
            IWebElement themeMessage = DriverHolder.driver.FindElement(By.Name("subject"));
            themeMessage.SendKeys(Keys.Tab);
            IWebElement workSpaceMessage = DriverHolder.driver.FindElement(By.Id("mce_0_ifr"));
            workSpaceMessage.SendKeys(p0);
        }
        public void ClickApproveSendMessageButoon()
        {
            IWebElement sendMessageApproveButton = DriverHolder.driver.FindElement(By.XPath("//button[contains(.,'Надіслати')]"));
            sendMessageApproveButton.Click();
        }
        public string GetTextForCheckSendmessage()
        {
            Thread.Sleep(3000);
            IWebElement checkSendMessage = DriverHolder.driver.FindElement(By.XPath("//div[3]/div/div[2]"));
            return checkSendMessage.Text;
        }
    }
}
