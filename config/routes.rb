Rails.application.routes.draw do
  root to: "home#index"

  devise_for :people, controllers: { registrations: "people" }
  
  resources :people, only: [:index, :edit, :updated]
  
  resources :pet_registrations

  get "/perfil" => "people#profile", as: :person_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
