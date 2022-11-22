class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @exercises = Exercise.all
  end

  def dashboard
    @exercises = Exercise.user_id.all
    @bookings = @exercises.booking_id
  end
end
