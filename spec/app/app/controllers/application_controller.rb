require File.dirname(__FILE__) + "/../../../../lib/collapsed_routes"
class ApplicationController < ActionController::Base
  include CollapsedRoutes
  collapsed_routes :users, :posts, :comments
  
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
