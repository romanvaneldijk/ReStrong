class AddImageurlToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :imageurl, :string
  end
end
