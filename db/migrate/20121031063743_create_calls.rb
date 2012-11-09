class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :fio
      t.string :time
      t.string :theme
      t.integer :user_id

      t.timestamps
    end
  end
end
