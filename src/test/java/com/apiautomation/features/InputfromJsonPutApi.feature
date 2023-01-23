@apiautomation
Feature: Update user using put api

Background: 
* url baseUrl
* def random_String = 
"""
		function(s){
			var text = "";
			var pattern = "ABCDEFGHIJKLMNOPQRSTVWXYZabcdefghijklmnopqrstuvwxyz";
			for(var i=0; i<s; i++)
				text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
				return text;
				
}
"""
* def randomString = random_String(10)
* def requestInput = read("classpath:data/user.json")

* set requestInput.email = randomString + "@gmail.com"

# can assert like these ways 
Scenario: Uodate a user with given data
Given path '/public/v1/users'
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method post
Then status 201
* match response.data.id == '#present'  				 				
		

* def userId = $.data.id
* def requestInput1 = read("classpath:data/updateuser.json")
Given path '/public/v1/users/' + userId
And request requestInput1
And header Authorization = 'Bearer ' + tokenId
When method put
Then status 200
* match response.data.id == '#present'  
* match response.data.id ==  userId			 				
* match $.data.name == 'Krsna'   				
And match $.data.email == requestInput1.email 		





