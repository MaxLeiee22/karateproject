Feature: upload

  Background:
    * url host
    * header Content-Type = contentTypeData
    * header x-api-key = authToken



  Scenario Outline: uploads images to the account





    Given path uploadIMG
#    And request breed
    And multipart file file = <dog_image>
    And multipart field sub_id = <sub_id>
    And multipart field breed_id = <breed_ids>
    When method post
    Then status <status_code>

#    Scenario: tests fields
#    And match response[*].id != null
#    And match response[*].sub_id != null
#    And match response[*].original_filename != null

      Examples:
|sub_id|breed_ids|dog_image| status_code|
  |'user1'| 2| {read:'resources/husky.jpeg', filename:'husky.jpeg', ContentType:'image/jpeg'}| 201|





