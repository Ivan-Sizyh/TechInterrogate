class AddAdditionalFieldsToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :additional, :text
    add_column :questions, :additioner, :string
  end
end
