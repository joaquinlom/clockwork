class AddRolToMembership < ActiveRecord::Migration
  def change
    add_reference :memberships, :rol, index: true
  end
end
