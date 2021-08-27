class CreateItemsActors < ActiveRecord::Migration[6.1]
  def change
    create_table :items_actors, :id => false do |t|
      t.integer :item_id
      t.integer :actor_id
    end
  end

  def self.down
    drop_table :items_actors
  end
end
