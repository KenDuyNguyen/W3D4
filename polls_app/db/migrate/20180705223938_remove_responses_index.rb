class RemoveResponsesIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :responses, :id
    add_index :responses, :user_id
    add_index :responses, :answer_choice_id
  end
end
