#Autor: Rodriguez Montecinos Roy Jesus
#Date: 08/22/2016
#Location: Cochabamba-Bolivia
Feature: This is the feature title

Scenario: Attempt withdrawal using stolen card
* I have $100 in my account
* my card is invalid
* I request $50
* my card should not be returned
* I shloud be told to contact the bank