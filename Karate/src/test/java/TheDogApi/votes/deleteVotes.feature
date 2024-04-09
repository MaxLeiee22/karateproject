Feature: delete votes

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario: delete votes

    Given path getVoteId + voteId
    When method delete
    Then status  200
    And response.message == 'SUCCESS'
    And response.id == null
