Rails.application.routes.draw do
  get 'home/index'
  resources :people
  resources :pet_registrations
  get 'pet', to: 'pet_registrations#index'
  get 'home', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
