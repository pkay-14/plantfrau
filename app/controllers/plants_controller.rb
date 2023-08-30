class PlantsController < ApplicationController
  layout "content_layout"
  def index;
    @plants = Plant.descending
  end
end