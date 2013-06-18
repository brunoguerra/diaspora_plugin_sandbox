# Load the rails application
require File.expand_path('../application', __FILE__)

require 'rubygems'
require 'diaspora_plugin'

ENV['DIASPORA_HOME'] ||= File.expand_path("../../../diaspora", __FILE__)
ENV['DB']='postgres'

Diaspora.diaspora_env do
  require File.join(ENV['DIASPORA_HOME'], 'config', 'environment')
end