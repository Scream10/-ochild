class AddFamilyNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name, :string
  end
end
