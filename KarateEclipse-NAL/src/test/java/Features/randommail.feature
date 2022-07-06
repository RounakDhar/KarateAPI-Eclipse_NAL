Feature: create user using post api

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
		
  Scenario: Create a user with the given data
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then Status 201
    And match $.data.id == '#present'
    And match $.data.name == '#present'
    And match $.data.name == 'testautomation'
    #And match $.data.name == 'testautomation@gmail.com'
    And match $.data.email == requestPayload.email
