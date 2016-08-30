Feature: Practice_Cucumber_session_7
@before
@after
@outline
Scenario Outline: List of Clients
	Given I search <USER>
	When i insert <ID>
	Then i have <PRICED>
	Examples: 
	| USER  | ID  |  PRICED |
	| pepe  | 123 | 350     |
	| juan  | 345 | 200     |
	| maria | 678 | 100     |

@before
@after
@normal
Scenario: Client
	Given I search juan
	When i insert 345
	Then i have 200

