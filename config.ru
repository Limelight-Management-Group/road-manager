require 'rubygems'
require 'bundler'
# require 'pry'
require 'geocoder'
require "geocoder/railtie"
Geocoder::Railtie.insert

Bundler.require


require './models/venue'
require './app'

use Rack::MethodOverride

run Road_manager

