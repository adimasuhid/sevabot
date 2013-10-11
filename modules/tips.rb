#!/usr/bin/ruby
gem 'rest-client'

require 'rest-client'
require 'json'
wat = RestClient.get "http://scrapist.herokuapp.com/scrape/rubyquicktips.com/random/.regular"
puts JSON.parse(wat)["some_data"]
