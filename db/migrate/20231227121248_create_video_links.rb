class CreateVideoLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :video_links do |t|
      t.references :question, foreign_key: true, null: false
      t.references :video, foreign_key: true, null: false

      t.timestamps
    end
  end
end
