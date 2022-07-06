Feature: Get API feature

  Scenario: pass the user request with headers_part1
    Given header Content-Type = 'text/xml;charset=ISO-8859-1'
    And header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'Keep-Alive'
    And header Expect = '100-continue'
    And header User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\.1\.5192\.22378)'
    And header Authorization = 'Bearer f554a8b4ae6429a41a0a654af5f96183997f2a77bcf7d871fe1646a1d3ca3e82'
    Given url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers_part2
    * def request_headers = {Content-Type = 'text/xml;charset=ISO-8859-1',Connection = 'Keep-Alive',User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\.1\.5192\.22378)'}
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response

  Scenario: pass the user request with headers_part3
    * configure headers = {Content-Type = 'text/xml;charset=ISO-8859-1',Connection = 'Keep-Alive',User-Agent = 'Mozilla/4.0(compatible;IE;GACv7\.1\.5192\.22378)'}
    When url baseUrl+'/public/v1/users'
    And path '30'
    When method GET
    Then status 200
    * print response
