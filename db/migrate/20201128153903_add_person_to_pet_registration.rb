class AddPersonToPetRegistration < ActiveRecord::Migration[5.2]
  def change
    add_reference :pet_registrations, :person, foreign_key: true
  end
end
