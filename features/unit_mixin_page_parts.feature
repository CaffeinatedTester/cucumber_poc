@UNIT
Feature: Abstract_pages unit tests
  As a developer in test
  I want to implement a abstract pages
  So that methods can be shared with the correct UI maps

  Scenario: page element mixin
    Given I have a page element mixin
    When I include it inside a UI map
    Then I will have access to the the methods

  Scenario: API method errors
    Given I have an environment variable Devices defined
    When I create a new API object
    Then the API can access the header methods



