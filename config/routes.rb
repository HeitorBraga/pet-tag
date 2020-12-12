Rails.application.routes.draw do
  root to: "home#index"

  devise_for :people, controllers: { registrations: "people" }
<<<<<<< HEAD
  resources :people, only: [:index, :edit, :updated]
=======
  
  resources :people, only: [:index, :edit, :updated]
  
>>>>>>> 8e1f52245a2e002ba2e17c9406da44c4a9acb687
  resources :pet_registrations

  get "/perfil" => "people#profile", as: :person_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
