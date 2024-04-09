Feature: create a breed

  Background:

  Scenario Outline: create a breed

    #    * url host
    * header Content-Type = 'application/json'
    * header x-api-key = 'live_s0XIIQyza3Q6j7eoB0qkwSCqX6DoEaDL0nnbyiXYcpOL5Y664TZjbxQu6m0a1q2t'
    * def breed =
      """
      {
        "breed_id": <BreedId>


      }
      """

    Given url createBreed
    And request breed
    When method post
    Then status 200

Examples:
| BreedId |
| 22    |
