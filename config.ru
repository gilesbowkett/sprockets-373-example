# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'

require 'sprockets'
map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'vendor/plugins/adminlte/plugins'
  run environment
end

map '/' do
  run Rails.application
end

