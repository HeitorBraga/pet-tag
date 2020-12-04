class CreatePetRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :pet_registrations do |t|
      t.string :name
      t.string :kind
      t.string :breed
      t.integer :birthdate

      t.timestamps
    end
  end
end
