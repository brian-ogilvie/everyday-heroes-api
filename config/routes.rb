Rails.application.routes.draw do

  get '/', to: 'application#index'
  
  get '/today/assignments/:habit_id', to: 'assignments#completed_assignment_by_habit'
  post '/assignments/', to: 'assignments#create'

  get '/today', to: 'today#index'

  get '/today/:habit_id', to: 'tasks#tasks_for_habit'
  get '/tasks/:id', to: 'tasks#show'

  get '/challenges/:id', to: 'challenges#show'
  post '/challenges/', to: 'complete_challenges#create'

  resources :users
  get '/users/:id/progress', to: 'users#progress'
  get '/users/:id', to: 'users#show'
  post '/authenticate', to: 'authentication#authenticate'
end