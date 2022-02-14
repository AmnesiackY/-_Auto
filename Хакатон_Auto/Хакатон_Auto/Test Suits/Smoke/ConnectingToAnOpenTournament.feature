Feature: ConnectingToAnOpenTournament

As a user
I want to join open tournaments
In order to win prizes in championship positions
@smoke @regression
Scenario Outline: Create cup tournament by admin
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	When User click on 'First' tournament link
	And User click 'Connect' button
	Then User on Tournamnet List page
	And User Connected to opened tournament

	 
	Examples: 
	| Email         | Password         |
	| gustavfergusson@ukr.net | zxcvbN123456789 |
