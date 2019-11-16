Rails.application.routes.draw do
  devise_for :admins

  namespace :admins do
    resources :users
    resources :events
    resources :conferences
  end
end
