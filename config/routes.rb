Rails.application.routes.draw do

  devise_for :users
  root "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks do
    resources :comments
  end
end
