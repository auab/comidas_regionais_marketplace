class Food < ApplicationRecord
  CATEGORIES = ['doces', 'salgados', 'bebidas']
  belongs_to :user
  validates :name, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_one_attached :photo
end
