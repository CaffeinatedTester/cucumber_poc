require 'csv'
require 'yaml'
require 'singleton'

class UrlManager
  include Singleton

  def initialize
    @protocol = 'https'
    @url = YAML.load_file('./config/environments/environment.yml')
    @env = ENV['TEST_ENV']
    @region = ENV['REGION']
  end

  def self.getFrontEnd(region = 'UK', protocol = nil)
    protocol ||= @protocol
    region ||= @region
    "#{@protocol}://#{@url.dig(region, 'sub')}#{@env}#{@url.dig(region, 'domain')}"
  end

  def self.getAdmin(protocol = nil)
    protocol ||= @protocol
    "#{@protocol}://#{@URL.dig('admin', 'sub')}#{@env}#{@URL.dig('admin', 'admin')}"
  end

end