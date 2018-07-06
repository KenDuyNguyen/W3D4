class RemoveAgainAnswerChoicesIndex < ActiveRecord::Migration[5.1]
  def change 
    remove_index :answer_choices, :id
  end
end
