class AddCategoryToItemCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :item_categories, :category, :string
  end
end
