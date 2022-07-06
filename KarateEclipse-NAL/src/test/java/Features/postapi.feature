Feature: create user using post api

  Background: 
    * url 'https://gorest.co.in'
    * def requestPayload =
      """
      {
         "id":2228,
         "name": "testautomation",
         "email": "testautomation@gmail.com",
         "gender":"male",
         "status":"active"
      }

      """

  Scenario: Create a user with the given data
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then Status 201
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.name == 'testautomation'
    And match $.data.name == 'testautomation@gmail.com'
