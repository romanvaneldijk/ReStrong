class RemoveItemIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :item_id, :bigint
  end
end
