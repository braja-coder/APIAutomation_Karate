@apiautomation
Feature: get api feature with query parameters

Scenario: get all user details with given query
* def query = {status:'active', gender:'male'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
* print response

Scenario: get all user details and get the user count
* def query = {status:'active'}
Given url baseUrl+'/public/v1/users'
And params query
When method GET
Then status 200
* print response
* def jsonResponse = response
* print jsonResponse
* def userCount = jsonResponse.data.length
* print userCount
* match userCount == 10













