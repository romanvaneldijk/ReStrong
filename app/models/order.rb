class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :items, through: :order_items
  belongs_to :user

  belongs_to :table
  # belongs_to :dinner, through: :users
end
