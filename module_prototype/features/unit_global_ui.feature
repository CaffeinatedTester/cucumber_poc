Feature: Gobal Map Unit tests
  As a developer in test
  I want to implement a Gobal class
  So that all the UI maps can access key methods

Scenario: Get env URI
  Given I pass a env parameter to the config
  When I create a new global map object
  Then then I will retrieve that env URI

Scenario: Get region URI
  Given I pass a region parameter to the config
  When I create a new global map object
  Then I can access that region URI

Scenario: Default URI
  Given I do not pass a parameter to the config
  When I create a new gloval map object
  Then the URI will return the defaul value