class FoodsController < ApplicationController
  before_action :set_food, only: %i[show edit destroy update]

  def index
    if params[:category]
      @foods = Food.where(category: params[:category])
    else
      @foods = Food.all
    end
  end

  def show; end

  def new
    @food = Food.new
  end

  def edit; end

  def update
    @food.update(food_params)
    redirect_to food_path(@food)
  end


  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id
    if @food.save
      redirect_to food_path(@food)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    @food.destroy
    redirect_to foods_path, status: :see_other
  end


  private

  def food_params
    params.require(:food).permit(:name, :category, :price, :description, :image_url)
  end

  def set_food
    @food = Food.find(params[:id])
  end
end
