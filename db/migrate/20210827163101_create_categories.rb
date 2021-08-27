class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :keyword
      t.integer :count
      t.string :language

      t.timestamps
    end

    add_index :categories, :keyword,	unique: true
    add_index :categories, :count, 	using: :btree
    add_index :categories, :language, using: :btree
  end
end
