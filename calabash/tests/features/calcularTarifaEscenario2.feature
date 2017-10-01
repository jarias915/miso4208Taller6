Feature: Calcular Tarifa Taxi calculate total with one additional charge

  Scenario: As an user I want to be able to open the calcular tarifa taxi screen from the side menu and calculate the Total for 150 units with one additional charge
    Given I press "Paraderos"
    #button to remove the splash screen
    When I swipe left
	#to open the menu
	And I press "Calcular tarifa taxi"
    And I enter "150" into input field number 1
	Then I should see "$13,000"
	