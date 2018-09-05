Rails.application.routes.draw do

  resources :incidents, except: [:edit, :show, :destroy] do
    collection do
      get :detailed
      get :success
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "incidents#index"
end
