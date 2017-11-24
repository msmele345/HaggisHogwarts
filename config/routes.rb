Rails.application.routes.draw do




  # resources :recipes

  # root 'recipes#index'

  resources :recipes do
    resources :ingredients do
      resources :measurments
    end
  end
##do we need this or can we do ingredients>measurments only?

  resources :users, only: [:create, :show, :new]

  resources :categories, only: [:index, :show] do
    resources :recipes
  end

  resources :ingredients
  resources :sessions

  root "categories#index"

  get 'logout', to: 'sessions#destroy', as: 'logout'

end
