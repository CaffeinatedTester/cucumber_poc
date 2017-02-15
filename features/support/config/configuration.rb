require 'singleton'

class FrameworkConfiguration
include Singleton

  attr_accessor :region, :env, :browser_profile, :protocol

  def initialize(region='uk', env='staging', browser_profile='web', protocol='https')
    @region = region.downcase
    @env = env.downcase
    @browser_profile = browser_profile.downcase
    @protocol = protocol.downcase
  end

  def set_region(region='uk')
    ENV['REGION'] = region.downcase
  end

  def set_environment(env='staging')
    raise 'no env selected' if env == nil
    ENV['TEST_ENV'] = env.downcase
  end

end