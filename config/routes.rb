Rails.application.routes.draw do

  get 'users/calendar'

  devise_for :users
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks do
    resources :comments
  end

  resources :events
  get '/calendar' => 'users#calendar', as: 'calendar'
  post '/calendar' => 'tasks#calendar'

end
