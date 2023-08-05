class HomeController < ApplicationController
  def index;
    @plants = Plant.descending
  end

  def edit
    plant = Plant.find(params[:id])
    plant.images.attach(params[:plant][:image])
    redirect_to :root
  end
end