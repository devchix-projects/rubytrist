#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rubytrist::Application.load_tasks

namespace :spec do
  desc "Run the code examples in spec/features"
  RSpec::Core::RakeTask.new(:features => "db:test:prepare") do |t|
    t.pattern = "spec/features/**/*_spec.rb"
  end
end
