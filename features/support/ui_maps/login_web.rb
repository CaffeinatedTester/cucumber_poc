require_relative 'header_web'

class LoginWeb < LoginAbstract
  include HeaderWeb

  def login_user
    'Login Web User'
  end

  def fail_login
    'Fail Login web User'
  end

  def login_on_page
    true
  end
end