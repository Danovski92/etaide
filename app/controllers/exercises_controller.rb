class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
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
