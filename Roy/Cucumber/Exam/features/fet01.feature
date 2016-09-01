Feature: Reservation

Background: Loguin
	Given user admin12
	When insert password admin12
	Then i see Welcome admin12
@scenario1
Scenario Outline: Data_table
	Given i have a origin <From>
	When i have a destination <To>
		And i have a <Date>
	Then i should see the <Flitgh>
		And <Available>
Examples:
|From|To |Date	    |Flitgh|Available|
|TJA |CBA|09/01/2016|0375  |OK		 |
|SCZ |LPZ|10/01/2016|0220  |NOT		 |