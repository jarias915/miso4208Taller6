Feature: Calcular Ruta

  Scenario: As an user I want to be able to open the calcular ruta and plan the trip
    Given I press "Paraderos"
    #button to remove the splash screen
	When I swipe left
	And I swipe right
	And I press "Planear viaje"
	And I swipe right
	Then I should see "Transmilenio"
	And I press "Transmilenio"
	Then I should see "Punto de origen"
	Then I should see "Punto de destino"
	And I swipe right
	Then I wait for 2 seconds
	Then I touch the "Punto de origen" text
    Then I press "etSearch"
	Then I enter text "marsella" into field with id "etSearch"
	Then I press "txtEstName"
	Then I touch the "Punto de destino" text
    Then I press "etSearch"
	Then I enter text "flores" into field with id "etSearch"
	Then I press "txtEstName"
	Then I should see "Marsella"
	Then I should see "Flores"
	Then I touch the "CALCULAR RUTA" text
