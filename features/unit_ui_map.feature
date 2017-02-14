@UNIT
Feature: UI Map
  As a developer in test
  I want to implement individual UI maps
  So that I can seperate UI maps for mobile and web

  Scenario: Get env URI
    Given I pass a env parameter to the config
    When I create a new ui map object
    Then I can retrieve the correct page URI

  Scenario: not overriding abstract methods
    When I create a new ui map object
    But have not overridden an api method
    Then I will receive an error containing the method name

  Scenario: override abstract method
    Given I create a new ui map object
    When access I access an overridden abstract method
    Then I will not receive an error