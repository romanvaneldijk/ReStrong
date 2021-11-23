class RemoveColumnFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :menu_item_id, :references
  end
end
