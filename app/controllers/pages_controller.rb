class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @foods = Food.last(4)
  end
end
