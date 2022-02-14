@highpriority
Feature: Authrization(LogIn)

As a user 
I want to be able to login 
In order to take part in the tournament

As member 
I want to be able to login 
To create my own tournament

@smoke @regression
Scenario Outline: Successful authorization as authorized user
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User enters '<Email>' in the email field
	And User enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page
	 
	Examples: 
	| Email         | Password         |
	| gustavfergusson@gmail.com | zxcvbN123456789 |

@smoke @regression
Scenario Outline: Successful authorization as a administrator
	Given Admin on page "http://sluipgenius.pp.ua/signIn"
	When Admin enters '<Email>' in the email field
	And Admin enters '<Password>' in the password field
	And User click on 'Submit' button
	Then User on TournamentList page

	Examples: 
	| Email         | Password         |
	| gustavfergusson@ukr.net | zxcvbN123456789 |

@regression
Scenario: Authorization with the empty fields
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User click on 'Submit' button
	Then User sees message "Invalid password or email"

@regression
Scenario Outline: Authorization with the invalid data
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When user enters '<Email>' in the Email field
	And user enters '<Password>' in the Password field
	And user clicks on the Sign in button
	Then user sees message "Invalid password or email"
	Examples: 
	| Email         | Password         |
	| gustavfergusson@ukr.net | zxcvbn123456789 |
	| gustavfergusson@ukr.net | zxcvbN987654321 |

