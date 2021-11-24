class RemoveQrCodeFromDinners < ActiveRecord::Migration[6.0]
  def change
    remove_column :dinners, :qr_code, :string
  end
end
