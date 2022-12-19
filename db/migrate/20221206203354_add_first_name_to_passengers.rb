class AddFirstNameToPassengers < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :firstName, :string
  end
end
