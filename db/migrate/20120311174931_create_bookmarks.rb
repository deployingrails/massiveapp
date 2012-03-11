class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.belongs_to :user
      t.string :url
      t.text :description

      t.timestamps
    end
    add_index :bookmarks, :user_id
  end
end
