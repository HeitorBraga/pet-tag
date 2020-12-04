json.extract! pet_registration, :id, :name, :kind, :breed, :birthdate, :created_at, :updated_at
json.url pet_registration_url(pet_registration, format: :json)
