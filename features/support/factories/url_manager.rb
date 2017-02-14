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

  def self.get_front_end(protocol = nil, reload = true)
    load_config if reload
    protocol ||= @protocol
    "#{protocol}://#{@url.dig(@region, 'sub')}#{@env}#{@url.dig(@region, 'domain')}"
  end

  def self.get_admin(protocol = nil)
    protocol ||= @protocol
    "#{protocol}://#{@url.dig('admin', 'sub')}#{@env}#{@url.dig('admin', 'admin')}"
  end
end