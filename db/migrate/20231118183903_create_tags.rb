# frozen_string_literal: true

class CreateTags < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :tags do |t|
      t.string :title

      t.timestamps
    end
  end
end
