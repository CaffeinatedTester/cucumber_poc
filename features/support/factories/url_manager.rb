require 'csv'
require 'yaml'
require 'singleton'

class UrlManager
  include Singleton

  def self.load_config
    @protocol = 'https'
    @url = YAML.load_file('./config/environments/environment.yml')
    @env = ENV['TEST_ENV']
    @region = ENV['REGION']
  end

  def self.getFrontEnd(protocol = nil, reload = true)
    load_config if reload
    protocol ||= @protocol
    "#{protocol}://#{@url.dig(@region, 'sub')}#{@env}#{@url.dig(@region, 'domain')}"
  end

  def self.getAdmin(protocol = nil)
    protocol ||= @protocol
    "#{@protocol}://#{@URL.dig('admin', 'sub')}#{@env}#{@URL.dig('admin', 'admin')}"
  end

end