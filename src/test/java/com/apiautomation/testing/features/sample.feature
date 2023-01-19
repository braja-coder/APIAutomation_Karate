Feature: Print Hello World

Scenario: Hello World scenario

	* print 'radhe radhe'
	* print 'hare krsna'
	
Scenario: declare and print variables and its sum
	
		* def balance = 100
		* def tax = 20
		* def fee = 10
		* print 'the total amount -> ' + balance + tax + fee
		* print 'the total amount -> ' + (balance + tax + fee)
		
		Scenario: multiple of two variables
	
		* def tax = 20
		* def fee = 10
	  * print 'multiple is -> ' + (tax*fee)
	 
	 