Feature: Calls

Background: Unlock my cellphone
	Given i need use my cellphone
	When i push unlock button
	Then i can use my applications


Scenario:  Realize a call
	Given i need verify all calls
	When i enter to list of calls
	Then i should see
	|Number	 |Date |In/Out|
	|60774379|08/20|in	  |
	|77554411|07/21|out	  |
	Then i have 2 calls
	Given i need comunication
	When i push in phone button
	When when i dial the number 77885544
	When i push Call button
	Then i have communication with a people
		And one new out call in the register in date 08/26
	When i review Call register
	Then i should see,
	|Number	 |Date |In/Out|
	|60774379|08/20|in	  |
	|77554411|07/21|out	  |
	|77885544|08/26|out	  |

Scenario: Listen Music
	Given i need listen music
	When i enter Spotify
		And i find music
	Then i can listen music with my cellphone
