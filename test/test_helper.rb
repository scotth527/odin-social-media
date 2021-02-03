ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "minitest/reporters"
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  include Devise::Test::IntegrationHelpers
  include Warden::Test::Helpers

  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
  def log_in( user )
      if integration_test?
          login_as(user, :scope => :user )
      else
          sign_in(user)
      end
  end
end
