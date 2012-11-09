class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :fio
      t.string :time
      t.string :theme
      t.integer :user_id

      t.timestamps
    end
  end
end
