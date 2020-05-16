require 'selenium-webdriver'
require 'nokogiri'
require 'capybara'

puts 'Setting up GScrapper config...'
puts 'Big thanks to G!'
sleep 3
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome
Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.default_driver = :selenium
end

@gscrapper = Capybara.current_session
@driver = @gscrapper.driver.browser
Capybara.run_server = false
puts 'Setup done. Ready to crawl.'





