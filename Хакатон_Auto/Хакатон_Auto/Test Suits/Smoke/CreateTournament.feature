Feature: CreateTournament

As an administrator 
I want to be able to create tournaments 
In order to ensure the fair conduct of events

@smoke @regression
Scenario Outline: Create cup tournament by admin
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	When User click on 'Create Tournament' button
	And User enter data to fields
	And User click 'Submit' button
	Then User on Tournamnet List page
	And Created Tournamet in Tournament List

	 
	Examples: 
	| Email         | Password         |
	| gustavfergusson@ukr.net | zxcvbN123456789 |
