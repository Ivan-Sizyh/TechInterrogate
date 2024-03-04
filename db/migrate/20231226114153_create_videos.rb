class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|

      t.string :text, null: false
      t.string :video_id, null: false
      t.string :timecode, null: false

      t.timestamps

    end
  end
end
