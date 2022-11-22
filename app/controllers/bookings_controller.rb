class BookingsController < ApplicationController
  before_action :set_booking, only: [:show]
  before_action :set_exercise

  def show
    @user = current_user
  end

  def new
    @user = current_user
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @exercise = @booking.exercise
    if @booking.save
      redirect_to dashboard_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_exercise
    @exercise = Exercise.find(params[:exercise_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :exercise_id, :user_id)
  end
end
