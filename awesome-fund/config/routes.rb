Rails.application.routes.draw do

  root 'projects#index'

  resources :projects do
    resources :pledges
  end

  resource :users

  resource :sessions, only: [:new, :create, :destroy]

end
