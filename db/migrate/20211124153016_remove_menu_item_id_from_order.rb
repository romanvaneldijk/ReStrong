class RemoveMenuItemIdFromOrder < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :menu_item_id, :string
  end
end
