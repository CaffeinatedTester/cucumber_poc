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

  def returnUI
    @myLogin.return_ui
  end

  def doLogin
    @myLogin.do_login
  end

  def headerAction
    @myLogin.header_action
  end

end