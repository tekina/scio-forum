class AddChapterIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chapter_id, :integer, null: false, default: 1
  end
end
