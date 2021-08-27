class CreateDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.date :date_of_birth
      t.string :description
      t.string :avatar_url

      t.timestamps
    end

    add_index :directors, :name, using: :btree
  end
end
