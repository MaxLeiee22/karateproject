Feature: create votes

  Background:
    * url host
    * header x-api-key = authToken
    * header content = contentType

  Scenario Outline: create votes

    * def votes =
    """
    {
      "image_id": <ImageId>,
      "sub_id": <SubId>,
       "value": <Value>
    }
      """
  Given path createVotes
    And request votes
    When method post
    Then status <StatusCode>
    And match response.message == 'SUCCESS'
#    And match response.id == voteId
    And match response.image_id == '<ImageId>'
    And match response.sub_id == '<SubId>'
    And match response.value == <Value>

    * def voteId = response.id
    * def voteJson = { voteID: '#(voteId)' }
    * call read('generic_getVoteId.feature') voteJson
#    * call read('deleteVotes.feature') voteJson
#    * call read('generic_getVotes.feature')



#    * match getVoteResponse.response.message == 'SUCCESS'
#    * match getVoteResponse.response.message == 'FAILED'
#    * match getVoteResponse.response status == 201
#    * match getVoteResponse.response.id == vote
#    * match getVoteResponse.response contains vote
#
#    * def getDeleteResponse = call read('deleteVotes.feature') {voteID: '#(deleteVoteAsString)'}
#    * print 'Vote Id: ' + response.voteID + ' successfully deleted!'


    * print response

    Examples:
      |ImageId|SubId|Value|StatusCode|
      |maxl|max8788|55   | 201      |