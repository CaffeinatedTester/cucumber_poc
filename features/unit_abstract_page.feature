@UNIT
Feature: Abstract_pages unit tests
  As a developer in test
  I want to implement a abstract pages
  So that methods can be shared with the correct UI maps

  Scenario: Get page URI
    Given I pass a region parameter to the config
    When I create a new abstract map object
    Then I can retrieve the correct page URI

  Scenario: API method errors
    When I create a new abstract map object
    Then I will receive an error containing the method name