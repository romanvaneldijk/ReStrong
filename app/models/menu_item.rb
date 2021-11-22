class MenuItem < ApplicationRecord
  validates :price, :description, :name, presence: true
  validates :name, uniqueness: true
end
