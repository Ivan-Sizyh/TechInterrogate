class AddAdditionalFieldsToAnswers < ActiveRecord::Migration[7.0]
  def change
    change_table :answers, bulk: true do |t|
      t.text :additional, null: false, default: 'no data'
      t.string :additioner, null: false, default: 'anonymus'
    end
  end
end
