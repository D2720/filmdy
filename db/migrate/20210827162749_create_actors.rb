class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :date_of_birth
      t.string :description
      t.string :avatar_url

      t.timestamps
    end

    add_index :actors, :name, using: :btree
  end
end
