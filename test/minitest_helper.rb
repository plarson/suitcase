# Testing frameworks
gem "minitest"
require "minitest/autorun"

# For making sure the dates will be valid
require "chronic"

# Debugger
require "pry"

# The gem
$: << File.dirname(__FILE__) + "/../lib"
$: << File.dirname(__FILE__)
require "suitcase"

