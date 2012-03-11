class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.belongs_to :bookmark
      t.belongs_to :shared_by
      t.belongs_to :shared_with

      t.timestamps
    end
    add_index :shares, :bookmark_id
    add_index :shares, :shared_by_id
    add_index :shares, :shared_with_id
  end
end
