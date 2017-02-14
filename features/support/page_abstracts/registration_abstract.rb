# The abstract class should implement all the methods defined in the API.
# If a method is called which has not be defined in the UI maps, a generic
# error will be return stating UI not implemented

class RegistrationAbstract < CucumberAbstract

  def shared_registration_element
    'shared_registation_element'
  end
end