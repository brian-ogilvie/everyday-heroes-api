Rails.application.routes.draw do
  post 'assignments/complete', to: 'assignments#create'
  get '/', to: 'application#index'
  get '/today', to: 'tasks#today'
  get '/today/:habit_id', to: 'tasks#tasks_for_habit'
  resources :users
  get '/users/:id/progress', to: 'users#progress'
  post 'authenticate', to: 'authentication#authenticate'
end