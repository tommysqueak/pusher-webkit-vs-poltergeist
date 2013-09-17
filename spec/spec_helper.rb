require 'capybara/rspec'
require 'capybara/poltergeist'

  require File.expand_path('../../config/environment', __FILE__)
  require 'rspec/rails'


RSpec.configure do |config|
    config.mock_with :rspec
    config.use_transactional_fixtures = false
    config.color_enabled = true
    config.tty = true
    config.treat_symbols_as_metadata_keys_with_true_values = true
    config.filter_run focus: true
    config.run_all_when_everything_filtered = true
    config.render_views

    config.order = 'random'
    config.include Capybara::DSL
end

Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new(app, inspector: true, debug: true)
end

Capybara.configure do |config|
  # config.javascript_driver = :poltergeist_debug
  config.javascript_driver = :poltergeist
  config.default_wait_time = 20
end