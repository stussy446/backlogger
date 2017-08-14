class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, null: false, unique: true 
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.integer :rank, default: 0
      
      t.timestamps
    end
  end
end
