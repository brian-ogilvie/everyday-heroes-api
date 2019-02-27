Rails.application.routes.draw do
  get '/', to: 'application#index'
  get '/today', to: 'tasks#today'
  get '/today/:habit_id', to: 'tasks#tasks_for_habit'
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
end