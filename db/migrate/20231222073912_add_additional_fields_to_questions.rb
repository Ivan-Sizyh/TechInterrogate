# frozen_string_literal: true

class AddAdditionalFieldsToQuestions < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_column :questions, :additional, :text
    add_column :questions, :additioner, :string
  end
end
