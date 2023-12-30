class AddAdditionalFieldsToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_column :answers, :additional, :text
    add_column :answers, :additioner, :string
  end
end
