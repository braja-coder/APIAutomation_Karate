@apiautomation
Feature: Create user using post api

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
* def requestInput =
"""
{
      "name": "Sundar Dash",
        "gender": "male",
        "status": "active"
 }
"""
* requestInput.email = randomString + "@gmail.com"

# can assert like these ways 
Scenario: Craete a user with given data
Given path '/public/v1/users'
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method post
Then status 201
* match response.data.id == '#present'  				 				
* match $.data.name == 'Sundar Dash'   				
And match $.data.email == requestInput.email 					
