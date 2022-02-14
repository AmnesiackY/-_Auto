Feature: CreateTournament

As an administrator 
I want to be able to create tournaments 
In order to ensure the fair conduct of events

As an user 
I want to be able to create tournaments 
In order to compete with other users

@smoke @regression
Scenario Outline: Create cup tournament by admin
	Given Admin on page "http://sluipgenius.pp.ua/signIn"
	When Admin enters '<Email>' in the email field
	And Admin enters '<Password>' in the password field
	And Admin click on 'Submit' button
	Then Admin on TournamentList page
	When Admin click on 'Create Tournament' button
	And Admin enter '<Name tournament>' to nametournament field
	And Admin enter '<Description of tournament>' to description field
	And Admin enter '<Place>' to place field
	And Admin choose 'Level' in select menu
	And Admin choose 'Number of participants' in select menu
	And Admin choose 'Scenario' in select menu
	And Admin click 'Contained' button
	Then Admin see notification about
	When Admin click Tournaments List
	And Admin double-click id filter
	Then Admin see created tournament

	 
	Examples: 
	| Email                   | Password        | Name tournament     | Description of tournament | Place  | 
	| gustavfergusson@ukr.net | zxcvbN123456789 | TestNameTournament1 | TestDescription1          | Kiev-1 | 

	@smoke @regression
Scenario Outline: Create cup tournament by user
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	When User click on 'Create Tournament' button
	And User enter '<Name tournament>' to nametournament field
	And User enter '<Description of tournament>' to description field
	And User enter '<Place>' to place field
	And User choose 'Level' in select menu
	And User choose 'Number of participants' in select menu
	And User choose 'Scenario' in select menu
	And User click 'Contained' button
	Then User see notification about
	When User click Tournaments List
	And User double-click id filter
	Then User see created tournament

	 
	Examples: 
	| Email                   | Password        | Name tournament     | Description of tournament | Place  | 
	| gustavfergusson@gmail.com | zxcvbN123456789 | TestNameTournament1 | TestDescription1          | Kiev-1 | 

