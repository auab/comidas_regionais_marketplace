class OrdersController < ApplicationController

  def create
    @food = Food.find(params[:food_id])
    @user = current_user
    @order = Order.new
    @order.user = @user
    @order.food = @food
    @order.status_pedido = 'Em processamento'
    @order.save
    redirect_to foods_path #TODO: verificar como direcionar para order do usuario
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order =  Order.find(params[:id])
    @update = params[:update]
    if @update == 'cancelar'
      @order.status_pedido = 'Cancelado'
      @order.save
      redirect_to order_path(@order)
    end
    if @update == 'confirmar'
      @order.status_pedido = 'Finalizado'
      @order.save
      redirect_to order_path(@order)
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path #TODO: verificar como direcionar para order do usuario
  end

  def index
    @orders = Order.where(user_id: current_user)
  end
end
