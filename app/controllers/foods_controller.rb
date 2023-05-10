class FoodsController < ApplicationController
  before_action :set_food, only: [:show]

  def index
    @foods = Food.all
  end

  def show; end

  def create
    @food = Food.new(food_params)
    @food.user_id = 3
    if @food.save
      redirect_to food_path(@food)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @food = Food.new
  end

  private

  def food_params
    params.require(:food).permit(:name, :category, :price, :description, :image_url)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
