Feature: Juega adivinando una letra
	Como jugador
	Quiero poder intentar adivinar una letra
	Para ganar el juego

	Scenario: Una letra correcta
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "hola"
	When intento adivinar con la letra "h"
	Then deberia ver "Letras correctas: 1"

	Scenario: Una letra incorrecta
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "chau"
	When intento adivinar con la letra "x"
	Then deberia ver "Letras correctas: 0"
    And deberia ver "Intentos fallidos: 1" 

	Scenario: Todas las letras incorrectas
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "aladino"
	When intento adivinar con la letra "a"
	And intento adivinar con la letra "l"
	And intento adivinar con la letra "d"
	And intento adivinar con la letra "i"
	Then deberia ver "Letras correctas: 5"

	Scenario: Termina el juego cuando se gana 
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "hola"
	When intento adivinar con la letra "h"
	And intento adivinar con la letra "o"
	And intento adivinar con la letra "l"
	And intento adivinar con la letra "a"
	Then deberia ver "Letras correctas: 4"
	And deberia ver "GANASTE!"
	And deberia ver el boton de adivinar desabilitado
	
	Scenario: Termina el juego cuando se tiene 6 fallas 
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "si"
	When intento adivinar con la letra "x"
	And intento adivinar con la letra "o"
	And intento adivinar con la letra "l"
	And intento adivinar con la letra "p"
	And intento adivinar con la letra "u"
	And intento adivinar con la letra "t"
	Then deberia ver "Letras correctas: 0"
	And deberia ver "Intentos fallidos: 6"
	And deberia ver "PERDISTE!"
	And deberia ver el boton de adivinar desabilitado
    And deberia ver el boton "Volver a Empezar"

	Scenario: Reiniciar juego
	Given estoy en la pagina de inicio
	And la palabra a adivinar es "no"
	And intento adivinar con la letra "n"
	And intento adivinar con la letra "x"
	When presiono el boton "Volver a Empezar"
	Then deberia ver "Letras correctas: 0"
	And deberia ver "Intentos fallidos: 0"





