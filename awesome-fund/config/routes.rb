Rails.application.routes.draw do


  root 'projects#index'
  resources :projects do
    resources :rewards
  end
  resource :users

  resource :sessions, only: [:new, :create, :destroy]

end
