Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  resources :chats  #, param :slug
  resources :messages

  get 'users/calendar'

  devise_for :users, :controllers => { registrations: 'registration' }
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks do
    resources :comments
  end

  resources :events
  get '/calendar' => 'users#calendar', as: 'calendar'
  post '/calendar' => 'tasks#calendar'

end
