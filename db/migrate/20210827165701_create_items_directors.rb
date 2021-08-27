class CreateItemsDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :items_directors, :id => false do |t|
      t.integer :item_id
      t.integer :director_id
    end
  end

  def self.down
    drop_table :items_directors
  end
end
