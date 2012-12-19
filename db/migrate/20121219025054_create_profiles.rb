class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :image
      t.references :user

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
