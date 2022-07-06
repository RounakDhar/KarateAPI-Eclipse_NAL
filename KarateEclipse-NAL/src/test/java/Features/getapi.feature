 Feature: Get API feature

  Scenario: get user details
    Given: 'https://gorest.co.in/public/v1/users'

    And path '30'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = jsonResponse.data.name
    * def actId = jsonResponse.data.id
    * def actMail = jsonResponse.data.email
    * print actName
    * match actName == 'Girik Banerjee CPA'
    * match actId == 30
    * match actMail == 'cpa_girik_banerjee@west-murray.biz'
    
    
   Scenario: get user details -- user not found
    Given: 'https://gorest.co.in/public/v1/users'

    And path '1'
    When method GET
    Then status 404