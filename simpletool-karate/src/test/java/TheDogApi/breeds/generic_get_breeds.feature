Feature: gets all breeds

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario: gets all breeds


    Given path getBreed1
    When method get
    Then status 200

    * print response