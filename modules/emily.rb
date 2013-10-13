#!/usr/bin/ruby

require 'rest-client'
require 'json'

response = RestClient.get "http://sandbox.api.simsimi.com/request.p",
  {:key => "f4fab228-9044-4b16-8e00-eacfa78d275f", :lc => "ph", :ft => "1.0", :text => "#{ARGV[0]}" }
puts JSON.parse(response)["response"]