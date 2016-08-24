#@Autor: RoyRodriguezMontecinos
#@Date:	August @2016

Feature: Google Main Page

Scenario: Page Title
	Given i insert url: https://www.google.com
	When i check page tittle
	Then i should see "Google" in page title space.
Scenario: Google Logo
	Given i insert url: https://www.google.com
	When i check the middle of the page
	Then i should see "Google. Logo" in the middle of the page.
Scenario: Search Button
	Given i insert url: https://www.google.com
	When i check the page
	Then i should see "Search with Google. Button"
Scenario: Search Box
	Given i insert url: https://www.google.com
	When i check the page
	Then i should see a text box to enter the desired search
	