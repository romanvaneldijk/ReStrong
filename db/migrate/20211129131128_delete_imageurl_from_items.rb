class DeleteImageurlFromItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :imageurl
  end
end
