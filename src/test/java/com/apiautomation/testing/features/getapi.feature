Feature: get api feature

Scenario: get user details
Given url baseUrl+'/public/v1/users'
And path '3651'
When method GET
Then status 200
* print response
* print response.data.id
* def josnResponse = response
* def id = josnResponse.data.id
* def name = josnResponse.data.name
* def email = josnResponse.data.email
* match name == 'Gauranga Sharma IV'
* match id == 3651
* match email == 'gauranga_iv_sharma@bosco.biz'


Scenario: get user details - incase user not found
Given url baseUrl + '/public/v1/users'
And path '1'
When method GET
Then status 404