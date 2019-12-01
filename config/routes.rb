Rails.application.routes.draw do
  devise_for :users
  root to: 'messages#index'
  resources :messages
  resources :articles do
    resources :comments
  end
end
