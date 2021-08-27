class CreateItemsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :items_categories, :id => false do |t|
      t.integer :item_id
      t.integer :category_id
    end
  end

  def self.down
    drop_table :items_categories
  end
end
