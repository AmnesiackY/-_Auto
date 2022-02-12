using OpenQA.Selenium;
using System;
using System.Threading;
using TechTalk.SpecFlow;
using Xunit;

namespace Хакатон_Auto
{
    [Binding]
    public class Authorization : BaseTest
    {
        private AuthorizationPage _page;
        private HomePage _homepage;
        private MessageBox _message;
        private ThirdMessage _thirdMessage;

        [Given(@"User on site ""([^""]*)""")]
        public void GivenUserOnSite(string p0)
        {
            DriverHolder.driver = StartDriverWithUrl(p0);
            _page = new AuthorizationPage();
        }

        [When(@"User enter ""([^""]*)"" in Login field")]
        public void WhenUserEnterInLoginField(string p0)
        {
            _page.EnterLogin(p0);
        }

        [When(@"User enter ""([^""]*)"" in Password field")]
        public void WhenUserEnterInPasswordField(string p0)
        {
            _page.EnterPassword(p0);
        }

        [When(@"User click on Sign In button")]
        public void WhenUserClickOnSignInButton()
        {
            _page.ClickSubmitButton();
        }

        [Then(@"User on Home page")]
        public void ThenUserOnHomePage()
        {
            _homepage = new HomePage();
            Assert.Equal("gustavfergusson@ukr.net", _homepage.checkAuth.Text);
        }
        [When(@"User click on Написати листа button")]
        public void UserClickOnНаписатиЛистаButton()
        {
            _homepage.ClickSendMessageButton();
        }

        [When(@"User enter ""([^""]*)"" e-mail")]
        public void UserEnterE_Mail(string p0)
        {
            _message = new MessageBox();
            _message.EnterRecipient(p0);
        }

        [When(@"User enter '([^']*)' of message")]
        public void WhenUserEnterOfMessage(string p0)
        {
            _message.EnterThemeMessage(p0);
        }

        [When(@"User enter '([^']*)'")]
        public void WhenUserEnter(string p0)
        {
            _message.EnterTextMessage(p0);
        }


        [When(@"User click Надіслати листа button")]
        public void WhenUserClickНадіслатиЛистаButton()
        {
            _message.ClickApproveSendMessageButoon();
        }

        [Then(@"User on the sending confirmation page")]
        public void ThenUserOnTheSendingConfirmationPage()
        {            
            Assert.Equal("Ваш лист надіслано\r\nНаписати ще Повернутись у вхідні", _message.GetTextForCheckSendmessage());
        }


        [When(@"User click Вхідні section")]
        public void UserClickВхідніSection()
        {
            _homepage.ClickIncomingSection();
        }

        [Then(@"User see all incoming messages")]
        public void ThenUserSeeAllIncomingMessages()
        {
            IWebElement check = DriverHolder.driver.FindElement(By.XPath("//span[contains(.,'Gustav Fergusson')]"));
            Assert.Equal("Gustav Fergusson", check.Text);
        }

        [When(@"User click on first message")]
        public void WhenUserClickOnFirstMessage()
        {
            _homepage.ClickFirstMessage();
        }
        [Then(@"User see content of message")]
        public void ThenUserSeeContentOfMessage()
        {
            _thirdMessage = new ThirdMessage();
            Assert.Equal("message3", _thirdMessage.h3Check.Text);
            Assert.Equal("test3", _thirdMessage.textMessageCheck.Text);
        }

    }
}
