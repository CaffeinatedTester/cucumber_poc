# The abstract class should implement all the methods defined in the API.
# If a method is called which has not be defined in the UI maps, a generic
# error will be return stating UI not implemented

class LoginAbstract < CucumberAbstract

  attr_reader :page

  def initialize
    @page = 'customer/login'
  end

  def get_page_url
    super + @page
  end

  def test_method_do_not_override
    raise "#{__method__} not defined within UI"
  end

  def login_on_page
    raise "#{__method__} not defined within UI"
  end
end