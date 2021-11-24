class RemoveForeignKeyFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :orders, column: :item_id
  end
end
