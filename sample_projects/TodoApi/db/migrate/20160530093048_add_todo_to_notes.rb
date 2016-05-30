class AddTodoToNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :todo, foreign_key: true
  end
end
