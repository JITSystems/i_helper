class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.integer :group_id
      t.integer :role_id

      t.timestamps
    end
  end
end
