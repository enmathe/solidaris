class ChangeTypeOfColumns < ActiveRecord::Migration[5.2]
  def change
    change_column :organizations, :siren, :string
  end
end
