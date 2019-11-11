Rails.application.routes.draw do

  devise_for :admins
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end