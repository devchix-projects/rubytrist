class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :url

      t.timestamps
    end
  end
end
