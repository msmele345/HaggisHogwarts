Rails.application.routes.draw do




  # resources :recipes

  # root 'recipes#index'



  resources :users, only: [:create, :show, :new]

  resources :categories do
    resources :recipes
  end

  resources :sessions

  root "categories#index"

  get 'logout', to: 'sessions#destroy', as: 'logout'

end
