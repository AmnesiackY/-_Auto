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
	When User click on link in message from server
	Then User on New Password page
	When User enter '<New Password>' in new password field
	And User enter '<New RePassword>' in new repassword field
	And User click '<Sumbit>' button
	Then User on LogIn page
	Examples: 
	| Email                     | New Password   | New RePassword |
	| qweqwe322322322@gmail.com | qwertY87654321 | qwertY87654321 |
