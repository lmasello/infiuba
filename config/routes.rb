Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :activities, only: [:index], defaults: { format: :json }
  get 'landing/index'
  root 'landing#index'
end
