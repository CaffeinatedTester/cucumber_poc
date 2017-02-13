class FrameworkConfiguration
  def set_region(region='uk')
    ENV["REGION"] = region.downcase
  end

  def set_environment(env='staging')
    raise "no env selected" if env == nil
    ENV["TEST_ENV"] = env.downcase
  end
end