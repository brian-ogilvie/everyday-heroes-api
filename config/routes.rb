Rails.application.routes.draw do
  get '/', to: 'application#index'
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
end