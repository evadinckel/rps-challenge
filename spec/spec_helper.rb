ENV['RACK_ENV'] = 'test'


require 'capybara/rspec'
require 'selenium-webdriver'
require 'simplecov'
require 'simplecov-console'
require 'sinatra'
require './app.rb'
require 'rspec'

Capybara.app = RPSWeb

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  #SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do
    puts
    puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end



# ENV['RACK_ENV'] = 'test'
#
# require File.join(File.dirname(__FILE__), '..', 'app.rb')
#
# require './app.rb'
# require 'features/web_helpers.rb'
# require 'capybara'
# Capybara.app = Battle
# require 'capybara/rspec'
# require 'rspec'
