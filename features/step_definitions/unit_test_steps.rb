Given(/^I pass a env parameter to the config$/) do
  config = FrameworkConfiguration.new
  @region = 'fr'
  @env = 'staging'
  config.set_environment(@region)
  config.set_environment(@env)
end

Then(/^then I will retrieve that env URI$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Given(/^I pass a region parameter to the config$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


When(/^I create a new global map object$/) do
  @abstract = CucumberAbstract.new
end


Then(/^I can access that region URI$/) do
  expect(@abstract.get_page_url).to == UrlManager.getFrontEnd
  p @abstract.get_page_url
end


Given(/^I do not pass a parameter to the config$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


When(/^I create a new gloval map object$/) do
  pending # Write code here that turns the phrase above into concrete actions
end


Then(/^the URI will return the defaul value$/) do
  pending # Write code here that turns the phrase above into concrete actions
end