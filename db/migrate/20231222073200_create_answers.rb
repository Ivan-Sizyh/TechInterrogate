# frozen_string_literal: true

class CreateAnswers < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :answers do |t|
      t.string :text, null: false
      t.date :response_date, null: false
      t.string :responder, null: false
      t.references :question, null: true, foreign_key: true

      t.timestamps
    end
  end
end
