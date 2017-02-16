require 'singleton'

class FrameworkConfiguration
  include Singleton

  attr_accessor :region, :env, :browser_profile, :protocol

    @region = ENV['REGION'].downcase
    @env = ENV['TEST_ENV'].downcase
    @browser_profile = ENV['DEVICE'].downcase
    if ENV['PROTOCOL'] != nil
      @protocol = ENV['PROTOCOL']
    else
      @protocol = 'HTTPS'
    end


  def self.region
    @region
  end

  def self.region=(region)
    @region = region
  end

  def self.environment
    @env
  end

  def self.environment=(env)
    @env = env
  end

  def self.protocol
    @protocol
  end

  def self.protocol=(protocol)
    @protocol = protocol
  end

end