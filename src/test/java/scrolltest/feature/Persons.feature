

Feature: Verify Persons

  Background:
    Given url 'https://reqres.in/'

  Scenario: Get all users
    Given path 'users'
    When method get
    Then status 200
    Then match response == '#array'

  Scenario: Get Single user
    Given path '/api/users/2'
    When method get
    Then status 200
    # use def keyword fo the variable
    * def id = response.id
    Then match id == 2
    # contains example
    Then match response contains {"firstName": "Janet"}
    Then match response.firstName ==  'Janet'
    Then match response.firstName !=  'pramod'
