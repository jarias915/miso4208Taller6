Feature: Calcular Tarifa Taxi calculate total with additional charges and display the charges details

  Scenario: As an user I want to be able to open the calcular tarifa taxi screen from the side menu and calculate the Total for 150 units with additional charges and display the details
    Given I press "Paraderos"
    #button to remove the splash screen
    When I swipe left
	#to open the menu
	And I press "Calcular tarifa taxi"
    And I enter "150" into input field number 1
	And I press "Puerta-Puerta"
	Then I should see "$12,300"
	And I press "Puerta-Puerta"
	Then I should see "$13,000"
	And I press "Noct./Fest."
	Then I should see "$15,000"
	And I press "Terminal"
	Then I should see "$15,500"
	And I press "Aeropuerto"
	Then I should see "$19,600"
	And I press "Detalle de recargos"
	And I wait for "Recargos" to appear
	Then I should see "Cerrar"
