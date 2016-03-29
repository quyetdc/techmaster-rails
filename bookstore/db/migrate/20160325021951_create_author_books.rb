class CreateAuthorBooks < ActiveRecord::Migration
  def change
    create_table :author_books do |t|
      t.references :author, index: true
      t.references :book, index: true

      t.timestamps null: false
    end
  end
end
