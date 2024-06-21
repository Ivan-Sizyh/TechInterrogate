class AddAdditionalFieldsToAnswers < ActiveRecord::Migration[7.0]
  def change
    change_table :answers, bulk: true do |t|
      t.text :additional, default: 'no data'
      t.string :additioner, default: 'anonymus'
    end
  end
end
