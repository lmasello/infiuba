Rails.application.routes.draw do
  get 'landing/index'
  resources :articles, only: [:show]

  root 'landing#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
