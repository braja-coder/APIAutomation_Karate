@apiautomation
Feature: Delete user using put api

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
# Create user
Scenario: Delete a user with given data
Given path '/public/v1/users'
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method post
Then status 201
* match response.data.id == '#present'  				 				
		
# delte user
* def userId = $.data.id
Given path '/public/v1/users/' + userId
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method delete
Then status 204

# fetch the same user
Given url baseUrl+'/public/v1/users'
And path userId
When method GET
Then status 404
And match $.data.message == 'Resource not found'
	





