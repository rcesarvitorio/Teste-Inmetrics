require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'rspec'
require 'httparty'


case ENV["BROWSER"]
when "firefox"
    @driver = :selenium
when "chrome"
    @driver = :selenium_chrome
when "headless"
    @driver = :selenium_chrome_headless
else
 puts "Browser Inválido."
end


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/config.yaml"))
Capybara.configure do |config|
    config.default_driver = @driver
    config.app_host = CONFIG["url"]
    config.default_max_wait_time = 10
  end