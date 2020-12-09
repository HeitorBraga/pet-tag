class AddCodeToPetRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_registrations, :code, :string
  end
end
