ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

if ENV["RAILS_ENV"] == "test"
  require "simplecov"
  SimpleCov.start :rails do
    add_filter "app/models/application_record.rb"
    add_filter "app/channels/application_cable/channel.rb"
    add_filter "app/channels/application_cable/connection.rb"
  end
  puts "required simplecov"
end

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  include Sorcery::TestHelpers::Rails

  # Add more helper methods to be used by all tests here...
end
