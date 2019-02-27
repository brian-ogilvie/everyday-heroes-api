Rails.application.routes.draw do
  get '/', to: 'application#index'
  get '/today', to: 'tasks#today'
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
end