Given(/^I pass a env parameter to the config$/) do
  FrameworkConfiguration.environment=('Test1')
end

Then(/^then I will retrieve that env URI$/) do
  expect(@obj.page_url).to eq(UrlManager.front_end)
  expect(@obj.page_url).to include(FrameworkConfiguration.environment)
end

Given(/^I pass a region parameter to the config$/) do
  FrameworkConfiguration.region=('fr')
end

When(/^I create a new global map object$/) do
  @obj = CucumberAbstract.new
end

Then(/^I can access that region URI$/) do
  expect(@obj.page_url).to eq(UrlManager.front_end)
  expect(@obj.page_url).to include(FrameworkConfiguration.region)
end

Given(/^I do not pass a parameter to the config$/) do
end

Then(/^the URI will return the default value$/) do
  expect(@obj.page_url).to eq(UrlManager.front_end)
  expect(@obj.page_url).to include(FrameworkConfiguration.region)
  expect(@obj.page_url).to include(FrameworkConfiguration.environment)
end

When(/^I create a new abstract map object$/) do
  @obj = LoginAbstract.new
end

Then(/^I can retrieve the correct page URI$/) do
  expect(@obj.page_url).to eq("#{UrlManager.front_end}#{@obj.page}")
  expect(@obj.page_url).to include(FrameworkConfiguration.region)
  p FrameworkConfiguration.environment
  expect(@obj.page_url).to include(FrameworkConfiguration.environment)
end

Then(/^I will receive an error containing the method name$/) do
  expect { @obj.test_method_do_not_override }.to raise_error(/test_method_do_not_override/)
end

When(/^I create a new ui map object$/) do
  @obj = LoginWeb.new
end

But(/^have not overridden an api method$/) do
  expect(@obj.method(:test_method_do_not_override).owner).to eq(@obj.class.superclass)
end

When(/^access I access an overridden abstract method$/) do
  expect(@obj.method(:login_on_page).owner).to eq(@obj.class)
end

Then(/^I will not receive an error$/) do
  expect(@obj.login_on_page).to eq(true)
end

Given(/^I have an environment variable Devices defined$/) do
  FrameworkConfiguration.browser_profile='mobile'
end

When(/^I create a new API object$/) do
  @obj = LoginAPI.new
end

Then(/^I will be able to access the correct UI map$/) do
  expect(@obj.myLogin.class.to_s).to match(/#{Regexp.quote(FrameworkConfiguration.browser_profile)}/i)
end

Given(/^I define an env variable$/) do
  @test_profile = 'web'
  FrameworkConfiguration.browser_profile=(@test_profile)
end

Then(/^I will have access to the env defined object$/) do
  expect(@obj.myLogin.class).to eq(LoginMobile)
end

When(/^I make an API call to a valid UI method$/) do
  @obj.login
end

Then(/^I will not receive an API error$/) do
  expect(@obj.login).to eq(true)
end

When(/^I make an API call to a not defined UI method$/) do
end

Given(/^I have a page element mixin$/) do
end

When(/^I include it inside a UI map$/) do
end

Then(/^I will have access to the the methods$/) do
  @obj = LoginMobile.new
  expect(@obj.burger_menu).to eq true
end

Then(/^the API can access the header methods$/) do
  expect(@obj.click_burger).to eq true
end