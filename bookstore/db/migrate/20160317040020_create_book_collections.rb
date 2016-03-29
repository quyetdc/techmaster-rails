class CreateBookCollections < ActiveRecord::Migration
  def change
    create_table :book_collections do |t|
      t.references :book, index: true, foreign_key: true
      t.references :collection, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
