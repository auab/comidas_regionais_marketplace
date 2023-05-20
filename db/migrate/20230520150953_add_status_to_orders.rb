class AddStatusToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :status_pedido, :string
  end
end
