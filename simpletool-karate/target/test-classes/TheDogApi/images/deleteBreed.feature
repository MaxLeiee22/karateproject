Feature: delete a breed

  Background:
    * url host
    * header content = contentType
    * header x-api-key = authToken

  Scenario: delete a breed


    Given url deleteBreed
    When method delete
    Then status 204
    Then match response[0] != ''