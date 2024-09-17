class CreateInterviews < ActiveRecord::Migration[7.0]
  def change
    create_table :interviews do |t|
      t.references :vacancy, foreign_key: true, null: false
      t.references :grade, foreign_key: true, null: false

      t.timestamps
    end
  end
end
