Rails.application.routes.draw do
  resources :pets
  root to: 'pets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
