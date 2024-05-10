class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|

      t.string :title, null: false
      t.string :video_id, null: false
      t.integer :timecode, null: false

      t.timestamps

    end
  end
end
