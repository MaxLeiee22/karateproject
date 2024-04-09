Feature: GET ALL ORDERS
  Background:
    * url host
    * header content = contentType

    * header x-api-key = authToken



  Scenario: get all cat ID


#    * param imgSize = size
#    * param mime_types = json
#    * param format = imgFormat
#    * param has_breeds = imgBreed
#    * param order = imgOder
#     *param page = pageSize
#     *param limit = imgLimit

    Given path searchAll
    And params { size: 'med', mime_types: 'jpg', format: 'json', has_breeds: 'true', order:'RANDOM', page: 0, limit: 10 }
    When method get
    Then status 200

#    And match response[*] != null

