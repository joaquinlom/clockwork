class RemoveRolToUser < ActiveRecord::Migration
  def change
  	 remove_column :users, :rol_id
  end
end
