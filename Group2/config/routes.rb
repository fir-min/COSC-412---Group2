Rails.application.routes.draw do
  root 'home#home'
  resources :products
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :charges
  resources :purchases
  resources :inventories
  resources :budgets

  get '/audit/audit/' => 'audit#audit'
  get '/audit/note/' => 'audit#note'
  get '/audit/correct/' => 'audit#correct'
  get '/audit/request_doc/' => 'audit#request_doc'

  resources :users
  resources :conversations do
    resources :messages
  end




end
