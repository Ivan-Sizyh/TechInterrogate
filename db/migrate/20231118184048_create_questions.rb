# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :questions do |t|
      t.string :text
      t.references :vacancy, null: false, foreign_key: true
      t.references :tag, null: true, foreign_key: true

      t.timestamps
    end
  end
end
