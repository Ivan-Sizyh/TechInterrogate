# frozen_string_literal: true

class CreateVacancies < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
