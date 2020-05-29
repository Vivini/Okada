class BikesController < ApplicationController
 before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def index
   @bikes = Bike.all
  end
  def show
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if params[:image_id].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:image_id])         
      raise "Invalid upload signature" if !preloaded.valid?
      @bike.image_id = preloaded.identifier
    end
    if @bike.save
      redirect_to bikes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike, notice:"Bike was succesfully updated "
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy
    redirect_to @bikes_path, notice:"Bike was succesfully deleted "
  end

   private

   def set_bike
     @bike = Bike.find(params[:id])
   end
  
  def bike_params
    params.require(:bike).permit(:model, :bike_type, :capacity, :price, :address, :img_url, photos: [])
  end
end
