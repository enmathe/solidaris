class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :description, :text
    add_column :users, :skills, :text
    add_column :users, :experiences, :text
    add_column :users, :picture, :string
  end
end
