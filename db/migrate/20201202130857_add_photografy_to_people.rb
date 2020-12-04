class AddPhotografyToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :photografy, :string
  end
end
