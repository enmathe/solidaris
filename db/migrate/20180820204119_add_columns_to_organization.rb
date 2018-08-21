class AddColumnsToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :name, :string
    add_column :organizations, :description, :text
    add_column :organizations, :kind, :string
    add_column :organizations, :total_volunteers, :integer
    add_column :organizations, :siren, :integer
    add_column :organizations, :category, :string
    add_column :organizations, :website, :string
    add_column :organizations, :facebook, :string
    add_column :organizations, :linkedin, :string
    add_column :organizations, :twitter, :string
    add_column :organizations, :address, :string
    add_column :organizations, :creation_date, :date
    add_column :organizations, :logo, :string
    add_column :organizations, :photo_1, :string
    add_column :organizations, :photo_2, :string
    add_column :organizations, :photo_3, :string
  end
end
