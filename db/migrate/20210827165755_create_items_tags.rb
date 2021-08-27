class CreateItemsTags < ActiveRecord::Migration[6.1]
  def change
    create_table :items_tags, :id => false do |t|
      t.integer :item_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :items_tags
  end
end
