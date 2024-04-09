Feature: gets a single image

  Background:
    * url host
    * header x-api-key = authToken

  Scenario: get a single image

    Given url getSingleIMG
    When method get
    Then status 200

    And match response[*] != null
    #And match response[*].name != null