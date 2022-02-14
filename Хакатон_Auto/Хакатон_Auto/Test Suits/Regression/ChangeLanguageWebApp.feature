Feature: ChangeLanguageWebApp

As a user 
I want to change language 
In order to have better understanding

@regression
Scenario Outline: Change Web-app language 
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	When User click on RUS language link
	Then Language changes on Russian localization

	Examples: 
	| Email | Password |
	| gustavfergusson@gmail.com | zxcvbN12345678 |
