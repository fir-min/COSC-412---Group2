Rails.application.routes.draw do

  resources :users
  resources :charges
  resources :purchases
  resources :inventories
  devise_for :users
  match ':controller(/:action(/:id(.:format)))', :via => :get


end
