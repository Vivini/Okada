class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end
  
  def new

  end

  def create

  end
end