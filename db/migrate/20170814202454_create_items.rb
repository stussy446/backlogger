class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :genre
      t.integer :length
      t.string :category, null: false 
      t.integer :creator_id, null: false
      
      t.timestamps
    end
  end
end
