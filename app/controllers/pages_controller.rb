class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @exercises = Exercise.all
  end

  def dashboard
    @user = current_user
    @exercises = @user.exercises
    @bookings = @user.bookings
  end
end
