class CreateVideoLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :video_links do |t|
      t.string :text, null: false
      t.string :video_id, null: false
      t.string :timecode, null: false
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
