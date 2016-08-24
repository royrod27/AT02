#@Autor: RoyRodriguezMontecinos
#@Date: August 2016

Feature: Daily Activities
Scenario: Listen music
	Given i need a distracction
	When unlock my phone
		And open Spotify
		And search music
		And pulse play music
	Then i can listen music

Scenario: Call
	Given I need comunitication
	When unlock my phone
		And search phone function
		And search one person in the contact administrator 
		And select call option
	Then i can talk to the desired person 
