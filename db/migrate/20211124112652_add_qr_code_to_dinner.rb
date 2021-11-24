class AddQrCodeToDinner < ActiveRecord::Migration[6.0]
  def change
    add_column :dinners, :qr_code, :string
  end
end
