Feature:

  Background:
  * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer e88068feab6c2d930d07309bbb52f91085723f851ebd3761c94e26a3a2b391e6'


    @TagOne
  Scenario: Get all orders


    * header Authorization = token
    Given path 'orders'
    When method get
    Then status 200

#      Scenario: Call get single order
#
#
#        * header Authorization = token
#        * def result = call read('getSingleOrder.feature@tagone') {'orderNum': '#(orderId)'}
#        * print 'result' + result.orderId
#        Given path 'orders'
#        When method get
#        Then status 200
      #  * def order = response[6].orderId
      #  * param orderId = order
