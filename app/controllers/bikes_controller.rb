class BikesController < ApplicationController
  before_action :set_bike, only: [:show]
  def show
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end
end
