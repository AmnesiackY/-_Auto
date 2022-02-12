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
    }
}
