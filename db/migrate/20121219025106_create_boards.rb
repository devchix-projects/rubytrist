class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.references :user
      t.string :title

      t.timestamps
    end
    add_index :boards, :user_id
  end
end
