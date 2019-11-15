Rails.application.routes.draw do
  devise_for :admins

  namespace :admins do
    resources :users
  end
end
