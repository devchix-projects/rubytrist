class CreateClipTags < ActiveRecord::Migration
  def change
    create_table :clip_tags do |t|
      t.references :tag
      t.references :clip

      t.timestamps
    end
  end
end
