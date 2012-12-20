class CreatePostlets < ActiveRecord::Migration
  def change
    create_table :postlets do |t|
      t.references :board
      t.references :clip

      t.timestamps
    end
    add_index :postlets, :board_id
    add_index :postlets, :clip_id
  end
end
