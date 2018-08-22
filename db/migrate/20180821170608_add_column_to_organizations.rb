class AddColumnToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :creation_year, :integer
  end
end
