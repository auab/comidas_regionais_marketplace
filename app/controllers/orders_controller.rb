class OrdersController < ApplicationController

  def create
    @food = Food.find(params[:food_id])
    @user = current_user
    @order = Order.new
    @order.user = @user
    @order.food = @food
    @order.status_pedido = 'Em processamento'
    @order.save
    redirect_to order_path(@order)
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
    redirect_to orders_path(user_type: "comprador")
  end

  def index
    @user_type = params[:user_type]
    if @user_type == "comprador"
      @orders = Order.where(user: current_user)
    end
    if @user_type == "vendedor"
      @orders = Order.where(food: Food.where(user_id:current_user.id))
      @order_count = @orders.count
      @sum = 0
      @orders.each do |order|
        @sum += order.food.price
      end
      @ticket_medio = @sum / @order_count
    end
  end
end
