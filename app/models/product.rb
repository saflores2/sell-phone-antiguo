class Product < ApplicationRecord
  validates :name, :year, :brand, :model, :status, :price, presence: true
  validates :status, inclusion: { in: %w(nuevo usado) }
end
