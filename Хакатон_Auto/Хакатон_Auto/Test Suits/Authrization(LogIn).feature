@highpriority
Feature: Authrization(LogIn)

As a user 
I want to be able to login 
In order to take part in the tournament

As member 
I want to be able to login 
To create my own tournament

@smoke @regression
Scenario: Successful authrization to the site
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enter <Login> in login field
	And User enter <Password> in password field
	And User click on Submit(LogIn) button
	Then User on TournamentList page

	Examples: 
	| Login | Password |
	| Amnesiack | zxcvbN123 |
	| Login | zxcvbN123 |
	| Login | zxcvbN456 |
	| Login | zxcvbN456 |
	| Login | zxcvbN789 |
	| Login | zxcvbN789 |
	| Login | qwertY123 |
	| Login | qwertY123 |
	| Login | qwertY456 |
	| Login | qwertY456 |
