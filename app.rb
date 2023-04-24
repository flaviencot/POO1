require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/event'
require_relative 'lib/user'

binding.pry
puts "end of file"
