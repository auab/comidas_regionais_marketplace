class Food < ApplicationRecord
  CATEGORIES = ['doces', 'salgados', 'bebidas']
  belongs_to :user
  validates :name, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
