require 'capybara/rspec'
require 'capybara/webkit'
require 'capybara/poltergeist'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.render_views

  config.include Capybara::DSL
end

Capybara.configure do |config|
  config.javascript_driver = ENV['DRIVER'] == 'webkit' ? :webkit : :poltergeist
  config.default_wait_time = 30
end
