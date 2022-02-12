@highpriority
Feature: Auto + Send/Check Letters

As a user
I want to be able to login to my email account
To be able to send and receive emails

As a user
I want to be able to send emails to other people
To be able to contact other people

As a member
I want to be able to receive other users' emails
To be able to get information from other people

Background: 
Given User on site "https://accounts.ukr.net/login?lang=ru"
When User enter "GustavFergusson" in Login field
And User enter "zxcvbn12345678" in Password field
And User click on Sign In button

Scenario: Login to email
Then User on Home page 

Scenario Outline: Write three letters to yourself
Then User on Home page 
When User click on Написати листа button
And User enter "gustavfergusson@ukr.net" e-mail
And User enter <theme> of message
And User enter <message text>
And User click Надіслати листа button
Then User on the sending confirmation page

Examples: 
| theme    | message text |
| message1 | test1        |
| message2 | test2        |
| message3 | test3        |

Scenario: Check content in letters
Then User on Home page  
When User click Вхідні section
And User click on third message
Then User see all incoming messages
