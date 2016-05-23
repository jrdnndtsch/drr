class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :link
      t.attachment :image

      t.timestamps null: false
    end
  end
end
