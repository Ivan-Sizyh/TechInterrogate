class CreateGrades < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|

      t.string :title, null: false

      t.timestamps

    end
  end
end
