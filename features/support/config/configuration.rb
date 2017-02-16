require 'singleton'

class FrameworkConfiguration
include Singleton

  attr_accessor :region, :env, :browser_profile, :protocol

  def initialize
    @region = ENV['REGION'].downcase
    @env = ENV['TEST_ENV'].downcase
    @browser_profile = ENV['DEVICE'].downcase
    if ENV['PROTOCOL'] != nil
      @protocol = ENV['PROTOCOL']
    else
      @protocol = 'HTTPS'
    end
  end

  def self.region
    @region
  end

  def self.environment
    @env
  end

end