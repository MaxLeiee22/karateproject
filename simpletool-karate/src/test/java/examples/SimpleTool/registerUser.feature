Feature:

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'

  Scenario Outline: register
    * def register =
      """
      {
        "clientName": <ClientName>,
        "clientEmail": <ClientEmail>

      }
      """

    Given path 'api-clients'
    And request register
    When method post
    Then status 201

    * def token = response.accessToken

    Examples:
      | ClientName | ClientEmail               |
      | Val3       | val3@example.com       |

