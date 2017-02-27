Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # API Endpoints
  api_version(module: 'api/v1', path: { value: 'api/v1' }, defaults: { format: :json }) do
    resources :activities, only: [:index], defaults: { format: :json }
    resources :stats, only: [:index], defaults: { format: :json }
    resources :events, only: [:index], defaults: { format: :json }
  end

  get 'landing/index'
  root 'landing#index'
end
