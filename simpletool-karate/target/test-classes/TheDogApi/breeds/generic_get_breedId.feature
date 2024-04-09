Feature: get a breed ID

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario: get a breed ID


  Given path getBreedId1
    When method get
    Then status 200
