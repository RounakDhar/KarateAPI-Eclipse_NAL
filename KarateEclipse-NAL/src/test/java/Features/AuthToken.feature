Feature: Get API feature

  Scenario: get user details
    * print tokenID
    Given header Authorization = 'Bearer ' + tokenID
    And url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response
