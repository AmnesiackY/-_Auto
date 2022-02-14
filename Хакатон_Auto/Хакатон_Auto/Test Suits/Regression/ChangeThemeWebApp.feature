Feature: ChangeThemeWebApp

As a user 
I want to have possibility to change color theme 
In order to let my eyes feel more convenient

@regression
Scenario Outline: Change Web-app theme 
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	When User click on theme toggler
	Then Theme changes on dark variant

	Examples: 
	| Email | Password |
	| gustavfergusson@gmail.com | zxcvbN12345678 |