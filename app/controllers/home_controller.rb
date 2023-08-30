class HomeController < ApplicationController
  def index;
    @plants = Plant.descending
    render 'users/login'
  end

  def edit
    plant = Plant.find(params[:id])
    plant.images.attach(params[:plant][:image])
    redirect_to :root
  end
end