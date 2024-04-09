Feature: delete an image

  Background:
    * url host
    * header content = contentType
    * header x-api-key = authToken

  Scenario: deletes an image



    Given url deleteIMG
    When method delete
    Then status 204
