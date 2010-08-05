#!/usr/bin/env ruby
if ENV['AMAZON_ACCESS_KEY_ID'] && ENV['AMAZON_SECRET_ACCESS_KEY']
  SSS::Base.establish_connection!(
    :access_key_id     => ENV['AMAZON_ACCESS_KEY_ID'], 
    :secret_access_key => ENV['AMAZON_SECRET_ACCESS_KEY']
  )
end

require File.dirname(__FILE__) + '/../test/fixtures'
include SSS