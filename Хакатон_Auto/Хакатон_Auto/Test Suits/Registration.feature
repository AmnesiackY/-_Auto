@highpriority
Feature: Registration

As a user 
I want to register myself 
In order to create a tournament

As a user 
I want to register myself 
In order to check tournament list

As a user 
I want to register myself 
In order to see my friend in Players table

@smoke @regression
Scenario: Successful registration to the site
	Given User on "http://sluipgenius.pp.ua' page
	Then User on Welcome Page
	When User click 'Start' button
	And User click Sign Up
	Then User on Sign Up page
	When User enter Login in login field
	And User enter Email in email field
	And User enter <Password> in password field
	And User enter <RePassword> in repassword field
	And User click on 'Submit'' button
	Then User see message about confirmation email
	When User approve message in him email 
	And User click on message link 
	Then User on Additional Information page
	When User enter <FirstName> in firstname field
	And User enter <LastName> in lastname field
	And User click on Date of Birthday field
	And User choose year of Birthday
	And User choose month of Birthday
	And User choose day of Birthday
	And User click on Gender select menu
	And User choose Gender
	And User click on 'Submit' button
	Then User on LogIn page
	And User is authorized
	Examples: 
	| FirstName | LastName    | Password | RePassword |
	| Aboba1    | Abobovi4    | zxcvbn123 | RePassword |
	| Aboba2    | Abobovich   | zxcvbn123 | RePassword |
	| Dima1     | Tsarenko1   | zxcvbn456 | RePassword |
	| Dima2     | Tsarenko2   | zxcvbn456 | RePassword |
	| Ilia1     | Tverdohleb1 | zxcvbn789 | RePassword |
	| Ilia2     | Tverdohleb2 | zxcvbn789 | RePassword |
	| Yaroslav1 | Yarovyi1    | qwerty123 | RePassword |
	| Yaroslav2 | Yarovyi2    | qwerty123 | RePassword |
	| Oleg1     | Khizhnyi1   | qwerty456 | RePassword |
	| Oleg2     | Khizhnyi2   | qwerty456 | RePassword |

