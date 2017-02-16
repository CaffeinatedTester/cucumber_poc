require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

task :default => :features

task :ci_runner, [:device, :env, :region, :tags] do |t, args|
  run_tags = args[:tags] unless args[:tags] == nil
  config = "DEVICE=#{args[:device]} TEST_ENV=#{args[:env]} REGION=#{args[:region]}"
  p "-b -f json -o cucumber.json -t #{run_tags} HEADLESS=TRUE #{config}}"
  Cucumber::Rake::Task.new(:ci_runner) do |t|
    t.cucumber_opts = "-f json -o cucumber.json -t #{run_tags} HEADLESS=TRUE #{config}}"
  end
  Rake::Task[:ci_runner].invoke
end
# rake ci_runner\['mobile'\,'test1'\,'UK'\,'@UNIT'\]