class RemoveColumnFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :creation_year, :string
  end
end
