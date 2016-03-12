class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :content, null: false
      t.string :url, null: false, unique: true
      t.timestamps null: false
    end
    
    add_index :posts, :user_id
    add_index :posts, :url,     unique: true
  end
end
