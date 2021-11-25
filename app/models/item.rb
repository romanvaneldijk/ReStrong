class Item < ApplicationRecord
  has_many :order_items
  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  has_many :order_items, dependent: :destroy
end
