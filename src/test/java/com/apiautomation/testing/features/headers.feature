Feature: get api headers feature

Scenario: pass the users request with headers part1
Given header Content-Type = 'application/json; charset=ISO-8859-1'
And header Accept-Encoding = 'gzip, deflate'
And header Connection = 'keep-alive'
And header Authorization = 'Bearer 007526d9efdcb07e084ff7a6d4c90588fbe20641c00faebf45a7f'
When url baseUrl+'/public/v1/users'
And path '3572'
When method GET
Then status 200
* print response

Scenario: pass the users request with headers part2
* def request_headers = {Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip, deflate',Connection:'keep-alive',Authorization:'Bearer 007526d9efdcb07e084ff7a6d4c90588fbe20641c00faebf45a7f'}
Given headers request_headers
When url baseUrl+'/public/v1/users'
And path '3572'
When method GET
Then status 200
* print response

Scenario: pass the users request with headers part3
* configure headers = {Content-Type: 'application/json; charset=utf-8', Accept-Encoding: 'gzip, deflate',Connection:'keep-alive',Authorization:'Bearer 007526d9efdcb07e084ff7a6d4c90588fbe20641c00faebf45a7f'}
Given url baseUrl+'/public/v1/users'
And path '3572'
When method GET
Then status 200
* print response

