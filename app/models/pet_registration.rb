class PetRegistration < ApplicationRecord
  belongs_to :person
  has_one_attached :photografy

  validates :name, :kind, :breed, :birthdate, :photografy, :person, presence: true
end

PetRegistration.create(name: nil).valid?
PetRegistration.create(kind: nil).valid?
PetRegistration.create(breed: nil).valid?
PetRegistration.create(birthdate: nil).valid?
PetRegistration.create(photografy: nil).valid?
PetRegistration.create(person: nil).valid?
