class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.integer :price
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
