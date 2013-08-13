# spec/spec_helper_full.rb
#require_relative 'spec_helper_lite'
require 'rr'
require 'date'
require 'ostruct'
require 'active_support'
require 'active_support/deprecation'

require_relative '../config/environment.rb'
require 'database_cleaner'
require 'minitest/autorun'


module SpecHelpers
  def setup_database
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.start
  end

  def teardown_database
    DatabaseCleaner.clean
  end
end
