# frozen_string_literal: true

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start 'rails' do
    add_filter ['spec', 'app/channels', 'app/jobs', 'app/mailers', 'app/models']
  end
end
