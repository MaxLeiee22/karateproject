Feature:


  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer e88068feab6c2d930d07309bbb52f91085723f851ebd3761c94e26a3a2b391e6'


  Scenario Outline: delete an order
    * def order = 'oMGupcs6ZXyBXo0g9FvOD'

    * header Authorization = token
    Given path 'orders', order
    And request order
    When method delete
    Then status 204
    * def orderId = response.orderId

    Examples:
      | ToolId | CustomerName | Comment |
      | 4643   | Moeketsi     | Great 1 |




