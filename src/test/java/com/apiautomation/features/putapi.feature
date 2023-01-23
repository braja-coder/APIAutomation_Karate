@apiautomation
Feature: Update user using put api

Background: 
* url baseUrl
* def requestInput =
"""
{				
				"gender": "Male",
        "status": "active",
         "email": "sd@gmail.com"
       
 }
"""
# can assert like these ways 
Scenario: Update a user with given data
Given path '/public/v1/users/74993'
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method put
Then status 200
* match response.data.id == '#present'  				 				
* match $.data.name == 'Sundar Dash'   									
And match $.data.email == 'sd@gmail.com' 







