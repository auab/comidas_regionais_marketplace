class Food < ApplicationRecord
  CATEGORIES = ['doces', 'salgados', 'bebidas']
  belongs_to :user
  validates :name, :price, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description_and_category,
    against: [ :name, :description, :category ],
    using: {
      tsearch: { prefix: true }
  }
end
