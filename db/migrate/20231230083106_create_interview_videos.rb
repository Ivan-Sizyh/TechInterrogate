class CreateInterviewVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :interview_videos do |t|
      t.references :interview, foreign_key: true, null: false
      t.references :video, foreign_key: true, null: false

      t.timestamps
    end
  end
end
