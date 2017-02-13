# The abstract class should implement all the methods defined in the API.
# If a method is called which has not be defined in the UI maps, a generic
# error will be return stating UI not implemented

class LoginAbstract < CucumberAbstract

  def shared_login_element
    "shared_login_element"
  end

  def api_required_method
    raise 'UI method not implemented'
  end

  def get_base_uri(env)
    super(region) + "customer/login"
  end

end