class AddColumnsToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :middleName, :string
    add_column :passengers, :lastName, :string
    add_column :passengers, :nationality, :string
    add_column :passengers, :gender, :string
    add_column :passengers, :title, :string
    add_column :passengers, :age, :integer
    add_column :passengers, :depDate, :date
    add_column :passengers, :retrnDate, :date
  end
end
