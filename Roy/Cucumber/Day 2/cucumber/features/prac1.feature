#Autor: Rodriguez Montecinos Roy Jesus
#Date: 08/23/2016
#Location: Cochabamba-Bolivia
Feature: Delete player
Scenario: Return player found and delete.
Given i have 100 players
And i enter the name
When press Search and Delete
Then i have 99 players