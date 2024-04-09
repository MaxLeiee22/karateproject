Feature: get a breed ID

  Background:
    * url host
    * header content = contentType

  Scenario: get a breed ID

    * header Authorization = authToken


    Given url getBreedIMG
    When method get
    Then status 200