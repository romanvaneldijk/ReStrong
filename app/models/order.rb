class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_one_attached :photo
  has_many :items, through: :order_items
  belongs_to :user

  belongs_to :table
  # belongs_to :dinner, through: :users
end
