Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' }, constraints: { format: 'json' } do
    namespace :v1 do

      # routes
      post '/events/verify_event', to: "events#verify_event"
      get '/events/details/:id', to: "events#details"

      post '/verify_user', to: 'users#verify_user'
      post '/verify_token', to: 'users#verify_token'
    end
  end
end


# Rails.application.routes.draw do
#   namespace :api, defaults: { format: 'json' }, constraints: { format: 'json' } do
#     namespace :v1 do
#       post '/user/send_verification_code', to: "users#send_verification_code"
#       post '/user/verify_verification_code', to: "users#verify_verification_code"
#       post '/user/update_customer', to: "users#update_customer"
#       get '/user', to: 'users#show'
#       get '/user/notifications', to: 'users#notifications'
#       post '/user/contact' ,to: 'users#contact'
#       post '/user/update_password', to: 'users#update_password'
#       put '/user/update_notification', to: 'users#update_notification'
#       delete '/user/remove_notification/:id' , to: 'users#remove_notification'
#       post '/user/close_account' , to: 'users#close_account'
#       post '/user/validate_password', to: 'users#validate_password'
#       post '/user/get_user', to: 'users#get_user'
#       post 'user/validate_phone_number', to: 'users#validate_phone_number'
#       get 'user/available_steadipay_balance', to: 'users#available_steadipay_balance'

#       # post '/user/get_plaid_account', to: 'users#get_plaid_account'
#       resources :plaids, only: [:index, :create] do
#         member do
#           get :generate_public_token
#         end
#         collection do
#           post :get_accounts
#           post :item_insitution
#         end
#       end
#       resources :users, only: [:update]
#       resources :checking_accounts, only: [:index, :create , :update] do
#         collection do
#           post :replace_checking_account
#         end
#       end
#       resources :credit_card_accounts, only: [:index, :create, :update, :destroy, :show] do
#         collection do
#           get :past_thirty_days_amount_spend
#           get :auth_info
#         end
#         member do
#           post :remove_credit_card
#           get :get_pending_transactions_balance
#         end
#       end
#       resources :expense_transactions , only: [] do
#         member do
#           get :cancel_transaction
#           get :refund_steadipay_balance_to_user
#         end
#         collection do
#           get :get_user_transactions
#           get :get_steadipay_balance
#         end
#       end
#       resources :uncovered_transactions , only: [:index, :update, :create]
#       resources :user_notification_settings, only: [:index, :update]
#       resources :manual_transfers, only: [:index, :create]
#     end
#   end
#   get '/api/version', to: 'api/v1/base#version'
# end
