class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :adult, :boolean
    add_column :users, :date_of_birth, :date
    add_reference :users, :family, foreign_key: true
    add_reference :users, :goal, foreign_key: true
  end
end
