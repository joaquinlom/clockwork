class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.boolean :status
      t.date :validity

      t.timestamps
    end
  end
end
