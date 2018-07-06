class UpdateQuestionsIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :questions, :text
    add_index :questions, :poll_id
  end
end
