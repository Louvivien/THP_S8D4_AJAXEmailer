Rails.application.routes.draw do
  get 'emails/index'
  devise_for :users
  root to: "emails#index"
  resources :tasks
  get 'emails/:id', to: 'emails#show', as: :email
  delete 'emails/:id', to: 'emails#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
