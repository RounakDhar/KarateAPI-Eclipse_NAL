Feature: Delete user using delete api

  Background: 
    * url 'https://gorest.co.in'
    * def random_string =
    """
    	function(s){
    		var text = "";
    		var patern = "g7dscancuascusugtctTASynsuiagabsisugciAJSioasuicg";
    		for(var i=0; i<s; i++){
    			text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
    			return text;
    		}
    	}
    """
    
    * def randomString = random_string(10)
    * print randomString
    
    * def requestPayload =
      """
      {
         "id":2228,
         "name": "testautomation",
         #"email": randomString+"@gmail.com",
         "gender":"male",
         "status":"active"
      }
      
      

      """
			* set requestPayload.email = randomString + "@gmail.com"
      * print requestPayload
		
  Scenario: Delete a user with the given data
  #1st: create a user using POST call
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then Status 201
    And match $.data.id == '#present'
    #And match $.data.name == '#present'
    #And match $.data.name == 'testautomation'
    #And match $.data.name == 'testautomation@gmail.com'
    #And match $.data.email == requestPayload.email
    
   #fetch the user id from the response
    * def userId = $.data.id
    * print userId
    
   #2nd: delete the same user
    Given path '/public/v1/users/' + userId
     #And request requestPayload
     And header Authorization = 'Bearer ' + tokenID
     When method delete
     Then Status 204
     #And match $.data.id == '#present'
    
   #3rd: get the same user with user id
     Given url baseUrl+'/public/v1/users'+ userId
     #And path '30'
     When method GET
     Then status 404
     And match $.data.message == 'Resource not found'
    
