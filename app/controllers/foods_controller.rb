class FoodsController < ApplicationController
  def index
    if params[:category]
      @foods = Food.where(category: params[:category])
    else
      @foods = Food.all
    end
  end
end
