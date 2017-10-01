Feature: Calcular Tarifa Taxi opening

  Scenario: As an user I want to be able to open the calcular tarifa taxi screen from the side menu the first time I open the app
    Given I press "Paraderos"
    #button to remove the splash screen
    When I swipe left
	#to open the menu
    And I press "Calcular tarifa taxi"
    Then I should see "Unidades"
	