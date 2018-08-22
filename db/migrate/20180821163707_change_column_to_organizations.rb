class ChangeColumnToOrganizations < ActiveRecord::Migration[5.2]
  def change
    rename_column :organizations, :creation_date, :creation_year
  end
end
