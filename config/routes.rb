Rails.application.routes.draw do
  root "schools#index"
  resources :schools, only: [:index, :show, :new, :create, :edit, :update]
  resources :counties, only: [:index, :show, :new, :create]
end
