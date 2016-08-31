Feature: Example

@normal
Scenario: Admin is defined
	Given admin user is defined
	When i verify pepe
		And i verify pedro does not exist

@outline
Scenario Outline: List of Users
Given i have a clients <CLIENT>
When i insert id <ID>
Examples: 
|CLIENT|ID|
|pepe|123|
|juan|345|
|maria|678|