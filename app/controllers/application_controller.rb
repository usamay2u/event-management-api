class ApplicationController < ActionController::Base
  include Rails.application.routes.url_helpers
  protect_from_forgery
end
