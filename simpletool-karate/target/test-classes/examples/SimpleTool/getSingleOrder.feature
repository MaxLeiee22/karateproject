Feature:

@TagOne
  Scenario: Get single order
    * header Authorization = token
    * def order = 'fObsspT6f6YRJO8vzYuWM'
  * def order = response[0].orderId
  * param orderId = order

    Given path 'orders'
    When method get
    Then status 200
  * print response.orderId



