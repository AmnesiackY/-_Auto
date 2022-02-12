using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Хакатон_Auto
{
    public class ThirdMessage : BaseTest
    {
        public ThirdMessage()
        {
            _driver = DriverHolder.driver;
        }

        public IWebElement h3Check = DriverHolder.driver.FindElement(By.XPath("//h3[contains(.,'message3')]"));
        public IWebElement textMessageCheck = DriverHolder.driver.FindElement(By.XPath("//span/div/span"));
    }
}
