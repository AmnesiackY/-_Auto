using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.Threading;
using TechTalk.SpecFlow;
using Xunit;

namespace Хакатон_Auto
{
    [Binding]
    public class SendThreeMessages : BaseTest
    {
        private HomePage _homepage;

        [When(@"User click on Написати листа button")]
        public void UserClickOnНаписатиЛистаButton()
        {
            _homepage = new HomePage();
            _homepage.ClickSendMessageButton();
        }

        [When(@"User enter ""([^""]*)"" e-mail")]
        public void UserEnterE_Mail(string p0)
        {
            _homepage.EnterRecipient(p0);
        }

        [When(@"User enter message(.*) of message")]
        public void UserEnterMessageOfMessage(string p0)
        {
            _homepage.EnterThemeMessage(p0);
        }

        [When(@"User enter test(.*)")]
        public void UserEnterTest(string p0)
        {
            _homepage.EnterTextMessage(p0);
        }

        [When(@"User click Надіслати листа button")]
        public void WhenUserClickНадіслатиЛистаButton()
        {
            _homepage.ClickApproveSendMessageButoon();
        }

        [Then(@"User on the sending confirmation page")]
        public void ThenUserOnTheSendingConfirmationPage()
        {
            Assert.Equal("","");
        }


        [When(@"User click Вхідні section")]
        public void UserClickВхідніSection()
        {
            _homepage.ClickIncomingSection();
        }

        [Then(@"User see all incoming messages")]
        public void ThenUserSeeAllIncomingMessages()
        {
            Assert.Equal("", "");
        }

        [When(@"User click on third message")]
        public void WhenUserClickOnThirdMessage()
        {
            _homepage.ClickFirstMessage();
        }
    }
}
