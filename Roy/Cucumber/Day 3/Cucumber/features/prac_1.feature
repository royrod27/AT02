#@Autor: RoyRodriguezMontecinos
#Date: August 2016

Feature: Eat
Scenario: I need eat
	Given Im hungry
	When i cook the meals
		And i eat
	Then i dont have more hungry

Scenario: I need energy
	Given im tired
	When i go for a burger
	Then i have more energy