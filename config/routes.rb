require 'sidekiq/web'

class ActionDispatch::Routing::Mapper
  def draw(routes_name)
    instance_eval(File.read(Rails.root.join("config/routes/#{routes_name}.rb")))
  end
end

Rails.application.routes.draw do
  resources :token_data
  routes_mode = ENV['ROUTES_MODE'].nil? ? 'all' : ENV['ROUTES_MODE']


  # add API specific routes
  draw :api_v1 if routes_mode =~ /(all|api|admin)/
  # for admin site
  draw :admins

  # add common routes
  # draw :common
  root :to => 'admins/dashboard#index'

  # add admin specific routes
  # draw :admin if routes_mode =~ /(all|admin)/

  # add sidekiq monitor
  # draw :sidekiq if routes_mode =~ /(all|sidekiq)/

  # Add API documentation
  # apipie if routes_mode == 'all'

  # match "*a", to: 'errors#routing', via: :all
end