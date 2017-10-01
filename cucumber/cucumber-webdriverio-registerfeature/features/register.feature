Feature: Register into losestudiantes
    As an user I want to register myself within losestudiantes website in order to rate teachers

	
Scenario Outline: Register with a login that already exists

  Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <name>, <lastname>, <email>, <password> and <accept>
    And I try to register
    Then I expect to see <error>

    Examples:
      | name			| lastname			| email					        | password	| accept	| error								|
      | carlos 	        | arias         	| j.arias915@uniandes.edu.co	| pwd20171	| true	    | Ya existe un usuario registrado	|


#Scenario Outline: Successful registration
#
# Nota: Se deja este escenario de prueba aca descrito, sin embargo, no esta funcionando debido a que se han intentado hacer registros con 
#       varios correos validos (personales) y con otros nos validos, pero el sitio web no los deja crear.
#
#  Given I go to losestudiantes home screen
#    When I open the login screen
#    And I fill with <name>, <lastname>, <email>, <password> and <accept>
#    And I try to register
#    Then I expect to see <success>
#
#    Examples:
#      | name			 | lastname			    | email					        | password	| accept	| success								|
#      | carlostest      | ariastest        	| juaneng25@yahoo.com          	| pwd19781	| true	    | Registro exitoso!             	    |


Scenario Outline: Registration with incorrect inputs

  Given I go to losestudiantes home screen
    When I open the login screen
    And I fill with <name>, <lastname>, <email>, <password> and <accept>
    And I try to register
    Then I expect to see the error <error>

    Examples:
      | name			| lastname			| email					        | password	| accept	| error								        |
      |                 |                 	|                            	|       	| 	        | Ingresa tu correo            	            |
	  |                 |                 	|                            	|       	| 	        | Ingresa una contraseña       	            |
	  |                 |               	|                            	|       	|           | Debes aceptar los términos y condiciones  |
	  | carlostest      |         	        |                            	|       	| 	        | Ingresa tu correo            	            |
	  |                 | ariastest        	|                            	|       	| 	        | Ingresa tu correo            	            |
	  |                 |               	|                            	| xx1234rt 	| 	        | Ingresa tu correo            	            |
	  |                 |               	|                            	| xx    	| 	        | al menos de 8 caracteres     	            |
	  |                 |               	|                            	|       	| true      | Ingresa tu correo            	            |
	  |                 |               	|                            	|       	| true      | Ingresa una contraseña       	            |
	  |                 |               	|                            	|       	| false     | Debes aceptar los términos y condiciones  |
	  |                 |                 	| jc                           	|       	| 	        | Ingresa un correo valido     	            |
