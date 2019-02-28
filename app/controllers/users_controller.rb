class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]

  def index
    render json: {
      message: 'Welcome to the users area!',
    }
  end

  def show
    begin
      user = User.find(params[:id])
      is_current = is_current_user?(user)
      if is_current
        render json: {user: user.as_json(:only => [:id, :screen_name, :first_name, :last_name, :level_id, :email, :created_at]), is_current_user: true}, status: 200
      else
        render json: {user: user.as_json(:only => [:id, :screen_name, :level_id, :created_at]), is_current_user: false}, status: 200
      end
    rescue ActiveRecord::RecordNotFound
      not_found
    rescue Exception
      server_error
    end
  end

  def create
    user = User.new(user_params)
    user[:level_id] = 1
    if user.save
      render json: {user: user.as_json}, status: 201
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def destroy
    if params[:id].to_i == current_user[:id].to_i
      User.destroy(params[:id])
      render json: {message: "Your account has been deleted."}
    else
      render json: {error: 'Unauthorized'}, status: 401
    end
  end

  def progress
    begin
      user = User.find(params[:id])
      level = user.level
      habit_points = level[:habit_points]
      completions = user.assignments.joins(:daily_task).where(daily_tasks: {level_id: user[:level_id]}).group("daily_tasks.heroic_habit_id").count()
      point_totals = []
      completions.each do | key, value |
        this_habit = {
          habit_id: key,
          habit: HeroicHabit.find(key)[:name],
          earned: value * habit_points,
          required: level[:num] != 1 ? level[:required_points] : Level0Point.find(key)[:points]
        }
        point_totals.push(this_habit)
      end
      render json: {points: point_totals}, status: 200
    rescue ActiveRecord::RecordNotFound
      not_found
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :screen_name, :password, :password_confirmation)
  end

  def not_found
    render json: {error: "No user with that id"}, status: 404
  end

  def server_error
    render json: {error: "Internal Server Error"}, status: 500
  end

  def is_current_user?(user)
    user[:id] == current_user[:id]
  end
end
