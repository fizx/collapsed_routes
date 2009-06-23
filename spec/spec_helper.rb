require 'spec'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'collapsed_routes'
ENV["RAILS_ENV"] = "test"
require File.dirname(__FILE__) + "/app/config/environment"

Spec::Runner.configure do |config|
  
end
