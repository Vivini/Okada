class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @bike = Bike.find(params[:bike_id])
  	@booking = Booking.new
  end 

  def create
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.new(booking_params)
    #@bike.booking = @bike
    @booking.user = current_user
    @booking.status = "Pending"
    
    # if @booking.end_date && @booking.start_date
    #   @booking.price = (@booking.end_date - @booking.start_date).to_f * @booking.bike.price.to_f
    # else
    #   @booking.price = 0
    # end

    if @booking.save
      redirect_to bikes_path
    else
      redirect_to bikes_path
    end
  end

  def show
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.find(params[:id])
    @booking = @bike.booking
  end

  def update
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.find(params[:id])
    @booking.status = "Pending"
    @booking.save!
    redirect_to bike_booking_path
  end

  def destroy
    @bike = Bike.find(params[:bike_id])
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :status)
  end

end
