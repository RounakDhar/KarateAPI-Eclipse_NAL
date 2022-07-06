Feature: Json Feature Testing

  Scenario: json reader parser
    * def jsonObject =
      """
      [
      {
      	"name": "sam",
      	"city": "Bangalore",
      	"age": 25
      	
      },
      
      {
      	"name": "Ram",
      	"city": "Delhi",
      	"age": 20
      	
      }
      
      ]
      

      """
    * print jsonObject
    * print jsonObject[0]
    * print jsonObject[0].name
    * print jsonObject[1].name
    * print jsonObject[1].name + " " + jsonObject[1].city + " " + jsonObject[1].age

  Scenario: complex json reader parser
    * def jsonObject =
      """
      {
      "menu": {
      "id": "file",
      "value": "File",
      "popup": {
      "menuitem": [
        {"value": "New", "onclick": "CreateNewDoc()"},
        {"value": "Open", "onclick": "OpenDoc()"},
        {"value": "Close", "onclick": "CloseDoc()"}
      ]
      }
      }
      }

      """
      
      * print jsonObject
      * print jsonObject[0]
      * print jsonObject[0].menu.id
      * print jsonObject[0].menu.popup
      * print jsonObject[0].menu.popup.menuitem
      * print jsonObject[0].menu.popup.menuitem[0].value
      * print jsonObject[0].menu.popup.menuitem[0].onclick
