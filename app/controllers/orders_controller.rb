class OrdersController < ApplicationController

  def create
    @food = Food.find(params[:food_id])
    @user = current_user
    @order = Order.new
    @order.user = @user
    @order.food = @food
    @order.save
    redirect_to foods_path #TODO: verificar como direcionar para order do usuario
  end

  def show
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
