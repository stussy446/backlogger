class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :user_id, null: false
      t.integer :item_id, null: false
      t.boolean :complete, default: false 
      
      t.timestamps
    end
  end
end
