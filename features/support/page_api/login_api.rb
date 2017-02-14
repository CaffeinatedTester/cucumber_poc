class LoginAPI

  attr_accessor :myLogin

  def initialize(env = nil)
    env ||= ENV['DEVICE']
    @myLogin = LoginWeb.new if env == 'web'
    @myLogin = LoginMobile.new if env == 'mobile'
  end

  def login
    @myLogin.login_on_page
  end

  def return_ui
    @myLogin.return_ui
  end

  def do_login
    @myLogin.do_login
  end

  def header_action
    @myLogin.header_action
  end
end