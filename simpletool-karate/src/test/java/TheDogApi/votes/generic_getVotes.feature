Feature: get votes

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario: get votes

  Given path getVotes
    * param limit = limit
    * param page = page
    When method get
    Then status 200
    * print response
