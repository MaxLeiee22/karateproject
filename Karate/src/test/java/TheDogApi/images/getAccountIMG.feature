Feature:

  Background:
    * url host
    * header content = contentType
    * header x-api-key = authToken


  Scenario: Only returns images from your account


    Given url getAccountIMG
    When method get
    Then status 200
    And match response[0].id != null
    And match response[*].original_filename == ['husky.jpeg']
    And match response[*].sub_id != null


