require 'csv'
require 'yaml'
require 'singleton'

class UrlManager
  include Singleton

  attr_reader :front_end, :admin

  def initialize
    @env = FrameworkConfiguration.instance.env
    @region = FrameworkConfiguration.instance.region
    @protocol = FrameworkConfiguration.instance.protocol
    @url = YAML.load_file('./config/environments/environment.yml')
  end

  def self.front_end
     @front_end = "#{protocol}://#{@url.dig(@region, 'sub')}#{@env}#{@url.dig(@region, 'domain')}"
  end

  def self.admin
     @admin = "#{protocol}://#{@url.dig('admin', 'sub')}#{@env}#{@url.dig('admin', 'admin')}"
  end

#Creating getter methods!!! does this need doing for Config as well?
#Tests need refactoring
#Abstract need refactor

end