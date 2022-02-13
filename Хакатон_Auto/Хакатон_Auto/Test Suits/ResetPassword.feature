@highpriority
Feature: ResetPassword

As a user 
I want to reset my password
In order to be able to restore the password for my personal account

@smoke @regression
Scenario Outline: Successful password recovery on the site
	Given User on page "http://sluipgenius.pp.ua/signIn"
	When User click 'Restore a password' button
	Then User on Forgot Password Page
	When User enter '<Email>' in email field
	And User click 'Submit' button
	Then User see notification about message for restore password
	And User on LogIn page
	Examples: 
	| Emmail                    |
	| qweqwe322322322@gmail.com |
