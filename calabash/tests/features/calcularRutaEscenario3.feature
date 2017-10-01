Feature: Calcular Ruta opening

  Scenario: As an user I want to be able to open the calcular ruta screen the first time I open the app
    Given I press "Paraderos"
    #button to remove the splash screen
	When I swipe left
	And I swipe right
	And I press "Planear viaje"
	And I swipe right
	Then I should see "SITP"
	And I press "SITP"
	Then I should see "Punto de origen"
	Then I should see "Punto de destino"
	Then I should see "Google Maps"
