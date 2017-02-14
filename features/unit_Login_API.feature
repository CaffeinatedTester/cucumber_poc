@UNIT
Feature: API feature
  As a developer in test
  I want to implement page APIs
  So that steps can access and the correct UI map

  Scenario: load in obj based on environment var
    Given I have an environment variable Devices defined
    When I create a new API object
    Then I will be able to access the correct UI map

  Scenario: override environment var
    Given I define an env variable
    And I have an environment variable Devices defined
    When I create a new API object
    Then I will have access to the env defined object

  Scenario: Access to page methods
    Given I have an environment variable Devices defined
    And I create a new API object
    When I make an API call to a valid UI method
    Then I will not receive an API error

  Scenario: Method not defined
    Given I have an environment variable Devices defined
    And I create a new API object
    When I make an API call to a not defined UI method
    Then I will receive an error containing the method name