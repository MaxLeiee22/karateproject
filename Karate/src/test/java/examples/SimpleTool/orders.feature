Feature: sample karate test script

  Background:
    * url 'https://simple-tool-rental-api.glitch.me'
    * def token = 'Bearer e88068feab6c2d930d07309bbb52f91085723f851ebd3761c94e26a3a2b391e6'




  Scenario Outline: create an order and get it by id


    * def orders =
      """
      {
        "toolId": <ToolId>,
        "customerName": "<CustomerName>",
        "comment": "<Comment>"
      }
      """



    * header Authorization = token
    Given path 'orders'
    And request orders
    When method post
    Then status 201




    Examples:
      | ToolId | CustomerName | Comment |
      | 4643   | Moeketsi     | Great 1 |












