class AddTableIdWithDefaultToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :table, foreign_key: true
  end
end
