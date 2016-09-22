Rails.application.routes.draw do

  root 'projects#index'
  resources :projects
  resource :users

  resource :sessions, only: [:new, :create, :destroy]

end
