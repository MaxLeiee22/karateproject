Feature: get vote id

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario: get vote id

#    * def voteId = $voteID
    Given path getVoteId + voteId
    When method get
    Then status  200
      And match response.id == voteId
      And match response.id != null
    And match response.image_id != null
    And match response.sub_id != null
    And match response.value != null
    And match response.country_code == 'ZA'


