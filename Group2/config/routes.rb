Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :charges
  resources :purchases
  resources :inventories
  match ':controller(/:action(/:id(.:format)))', :via => :get


end
