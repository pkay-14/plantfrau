class HomeController < ApplicationController
  def index;
    @plant = Plant.first
  end
end