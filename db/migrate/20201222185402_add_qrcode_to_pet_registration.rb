class AddQrcodeToPetRegistration < ActiveRecord::Migration[5.2]
  def change
    add_column :pet_registrations, :qrcode, :string
  end
end
