class RenameMenuItemToItem < ActiveRecord::Migration[6.0]
  def change
    rename_table :menu_items, :items
  end
end
