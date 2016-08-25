Feature: Gmail create acount formulary
Scenario: Account
	Given I need a gmail account
Scenario: Name
	When i enter my first name: Roy
Scenario: LastName
	When i select text box Last name: Rodriguez
Scenario: Email
	When i enter my chosen email: rjrm.27
Scenario: Password
	When i indroduce my chosen password: 123aSd987
Scenario: Password Confirmation
	When i enter my password again: 123aSd987
Scenario: Month Birthday
	When i select my birthday month: January
Scenario: Day Birthday
	When i enter my birthday day: 20
Scenario: Year Birthday
	When i enter my birthday year: 1992
Scenario: Gender
	When i select my gender: Male
Scenario: Cel Number
	When i enter my cellphone number: 60774379
Scenario: Actual Email
	When i enter another email account: roy_23@gmail.com
Scenario: Country
	When i select my country: Bolivia
Scenario: Final
	Then i have one account
