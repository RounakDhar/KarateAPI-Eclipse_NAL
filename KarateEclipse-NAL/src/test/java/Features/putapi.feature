Feature: create user using post api

  Background: 
    * url 'https://gorest.co.in'
    * def requestPayload =
      """
      {
         #"id":2228,
         #"name": "testautomation",
         "email": "testautomation1@gmail.com",
         #"gender":"male",
         "status":"active"
      }

      """

  Scenario: Update a user with the given data
    Given path '/public/v1/users/102'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method put
    Then Status 200
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.name == 'testautomation'
    And match $.data.name == 'testautomation1@gmail.com'
