class ChallengesController < ApplicationController
  def show
    begin
      challenge = Challenge.find(params[:id])
      challenge_hash = {
        id: challenge[:id],
        title: challenge[:title],
        description: challenge[:description],
        category: challenge[:category],
        url: challenge[:url],
        embed_url: challenge[:embed_url],
      }
      if challenge[:category] == 'bonus'
        challenge_points = ChallengePoint.where({challenge_id: challenge[:id]})
        bonus_points = []
        challenge_points.each do | entry |
          habit = HeroicHabit.find(entry[:heroic_habit_id])
          bonus_points.push({id: entry[:id], habit: habit[:name], points: entry[:points]})
        end
        challenge_hash[:bonus_points] = bonus_points
      end
      render json: {challenge: challenge_hash}
    rescue ActiveRecord::RecordNotFound
      not_found
    rescue Exception
      server_error
    end
  end

  private
  def not_found
    render json: {errors: ["No Challenge found with that id"]}, status: 404
  end

  def server_error
    render json: {errors: ["Internal Server Error"]}, status: 500
  end
end
