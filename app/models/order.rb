class Order < ApplicationRecord
  CATEGORIES = ['Cancelado', 'Em processamento', 'Finalizado']
  belongs_to :food
  belongs_to :user
  validates :status_pedido, inclusion: { in: CATEGORIES }
end
