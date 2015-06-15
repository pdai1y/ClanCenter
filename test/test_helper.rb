require "codeclimate-test-reporter"
require 'coveralls'
require 'simplecov'

CodeClimate::TestReporter.start
Coveralls.wear!('rails')
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  include Devise::TestHelpers
  include Warden::Test::Helpers                        
  Warden.test_mode!   
end

Devise.stretches = 1