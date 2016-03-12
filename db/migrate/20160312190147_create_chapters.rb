class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name,   null: false, unique: true
      t.boolean :active,  null: false, default: true
      t.timestamps null: false
    end
  end
end
