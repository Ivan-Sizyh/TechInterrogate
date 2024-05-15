class AddAdditionalFieldsToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :additional, :text, null: false
    add_column :answers, :additioner, :string, null: false
  end
end
