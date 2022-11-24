class ExercisesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR category ILIKE :query"
      @exercises = Exercise.where(sql_query, query: "%#{params[:query]}%")
    else
      @exercises = Exercise.all
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    @booking = Booking.new
    @user = @exercise.user
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercice = Exercise.new(exercise_params)
    @exercise.save
    redirect_to dashboard_path # to be changed later?
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :description, :price_per_day, :category, :response_time)
  end
end
