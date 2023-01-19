Feature: get api feature with authorization token

Scenario: get user details when token given
Given header Authorization = 'Bearer ' + tokenId
When url baseUrl+'/public/v1/users'
When method GET
Then status 200
* print response