ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.

# Fix for mutex_m gem missing in Ruby 3.4.4
require 'mutex_m'

# Fix for logger gem conflict in Rails 6
require 'logger'

require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
