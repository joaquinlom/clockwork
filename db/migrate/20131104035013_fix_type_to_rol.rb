class FixTypeToRol < ActiveRecord::Migration
  def change
    rename_column :rols, :type, :name
  end
end
