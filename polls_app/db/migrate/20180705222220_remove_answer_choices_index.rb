class RemoveAnswerChoicesIndex < ActiveRecord::Migration[5.1]
  def self.down
    remove_index :answer_choices, :id
  end
  
  def self.up
    add_index :answer_choices, :body
  end 
  
end
