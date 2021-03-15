Rails.application.routes.draw do

  root to: "home#index"

  devise_for :people, controllers: { registrations: "people" }

  resources :people, only: [:index, :edit, :updated, :destroy]
  
  resources :pet_registrations do
    member do
      get :print_tag
    end
  end

  get "/perfil" => "people#profile", as: :person_profile
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
