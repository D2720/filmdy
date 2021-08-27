class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :content_type
      t.integer :status
      t.datetime :uploaded_at
      t.string :category
      t.string :tag
      t.string :description
      t.date :released_at
      t.string :director
      t.string :actor

      t.timestamps null: false
    end

    add_index :items, :title,         using: :btree
    add_index :items, :released_at,   using: :btree
  end
end
