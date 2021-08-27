class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.string :keyword
      t.integer :count
      t.string :language

      t.timestamps
    end

    add_index :tags, :keyword,	unique: true
    add_index :tags, :count, 	using: :btree
    add_index :tags, :language, using: :btree
  end
end
