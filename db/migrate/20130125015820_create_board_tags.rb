class CreateBoardTags < ActiveRecord::Migration
  def change
    create_table :board_tags do |t|
      t.integer :board_id
      t.integer :tag_id
    end
    add_index :board_tags, :board_id
    add_index :board_tags, :tag_id
  end
end
