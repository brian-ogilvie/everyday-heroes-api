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
    user[:email] = user[:email].downcase()
    user[:level_id] = 1
    if user.save
      render json: {user: user.as_json}, status: 201
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def update
    begin
      if params[:id].to_i == current_user[:id].to_i
        user = current_user
        user.update(update_user_params)
        if user.save
          render json: {user: user.as_json}, status: 200
        else
          render json: {errors: user.errors.full_messages}, status: 400
        end
      else
        render json: {error: 'Unauthorized'}, status: 401
      end
    rescue ActiveRecord::RecordNotFound
      not_found
    rescue Exception
      server_error
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
      point_totals = get_habit_point_totals(user)
      challenge_totals = get_required_challenge_totals(user)

      render json: {level_num: user.level[:num], points: point_totals, challenges: challenge_totals}, status: 200
    rescue ActiveRecord::RecordNotFound
      not_found
    end
  end

  private

  def get_habit_point_totals(user)
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
    point_totals
  end

  def get_required_challenge_totals(user)
    required = Challenge.where({level_id: user.level, category: Challenge.categories[:required]}).count()
    earned = CompleteChallenge.joins(:challenge).where(complete_challenges: {user_id: user[:id]}, challenges: {level_id: user.level, category: Challenge.categories[:required]}).count()
    {earned: earned, required: required}
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :screen_name, :password, :password_confirmation)
  end

  def update_user_params
    update_user_params = user_params
    update_user_params.delete(:password)
    update_user_params.delete(:password_confirmation)
    puts update_user_params
    update_user_params
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
