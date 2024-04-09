Feature: sample karate test script

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer e88068feab6c2d930d07309bbb52f91085723f851ebd3761c94e26a3a2b391e6'


    Scenario Outline: update an order

      * def order = 'R2n_hxrBFxTnLQaD0wkUn'
  * def updateOrder =

      """

      {

        "customerName": "<CustomerName>",
        "Comment": "<Comment>"
      }
      """


      * header Authorization = token
      Given path 'orders', order

      And request updateOrder
      When method patch
      Then status 204
      * def orderId = response.order


      Examples:
        | ToolId | CustomerName | Comment |
        | 4643   | Moeketsi     | Great 1 |









