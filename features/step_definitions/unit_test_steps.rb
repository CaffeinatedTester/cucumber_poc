Given(/^I pass a env parameter to the config$/) do
  config = FrameworkConfiguration.new
  @region = 'uk'
  @env = 'staging'
  config.set_region(@region)
  config.set_environment(@env)
end

Then(/^then I will retrieve that env URI$/) do
  expect(@abstract.get_page_url).to eq(UrlManager.getFrontEnd)
  expect(@abstract.get_page_url).to include(@env)
end


Given(/^I pass a region parameter to the config$/) do
  config = FrameworkConfiguration.new
  @region = 'fr'
  @env = 'staging'
  config.set_region(@region)
  config.set_environment(@env)
end


When(/^I create a new global map object$/) do
  @abstract = CucumberAbstract.new
end


Then(/^I can access that region URI$/) do
  expect(@abstract.get_page_url).to eq(UrlManager.getFrontEnd)
  expect(@abstract.get_page_url).to include(@region)
end


Given(/^I do not pass a parameter to the config$/) do
  config = FrameworkConfiguration.new
  config.set_region
  config.set_environment
end

Then(/^the URI will return the defaul value$/) do
  expect(@abstract.get_page_url).to eq(UrlManager.getFrontEnd)
  expect(@abstract.get_page_url).to include('uk')
  expect(@abstract.get_page_url).to include('staging')
end