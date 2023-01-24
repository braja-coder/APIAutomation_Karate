Feature: test

Scenario: test
* def query = {access_key:'09deee9e474df8454173d53df36363c3',query:'New York'}
Given url 'http://api.weatherstack.com/current'
And params query
When method GET
Then status 200
* print response
* match response.location.country == 'United States of America'
* match $.current.temperature == 6