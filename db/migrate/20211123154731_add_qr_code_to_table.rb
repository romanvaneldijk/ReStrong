class AddQrCodeToTable < ActiveRecord::Migration[6.0]
  def change
    add_column :tables, :qr_code, :string
  end
end
