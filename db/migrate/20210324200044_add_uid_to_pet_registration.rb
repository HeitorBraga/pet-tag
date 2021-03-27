class AddUidToPetRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_registrations, :uid, :string, index: true
  end
end
