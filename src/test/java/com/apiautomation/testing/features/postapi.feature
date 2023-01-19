Feature: Create user using post api

Background: 
* url baseUrl
* def requestInput =
"""
{
      "name": "Sundar Dash2",
        "email": "sundardash19@gmail.com",
        "gender": "male",
        "status": "active"
 }
"""
# can assert like these ways 
Scenario: Craete a user with given data
Given path '/public/v1/users'
And request requestInput
And header Authorization = 'Bearer ' + tokenId
When method post
Then status 201
* match response.data.id == '#present'  				 				
* match $.data.name == 'Sundar Dash2'   									
And match $.data.email == 'sundardash19@gmail.com' 







