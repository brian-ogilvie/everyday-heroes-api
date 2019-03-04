class CompleteChallengesController < ApplicationController
  def create
    already_completed = CompleteChallenge.where({challenge_id: params[:challenge_id], user_id: current_user[:id]})
    if already_completed.count > 0
      return render json: {errors: ["You have already completed that challenge"]}
    end
    complete = CompleteChallenge.new(complete_challenge_params)
    complete[:user_id] = current_user[:id]
    if complete.save
      render json: {completed: complete}, status: 201
    else
      render json: {errors: complete.errors.full_messages}, status: 401
    end
  end

  private
  def complete_challenge_params
    params.require(:complete_challenge).permit(:challenge_id)
  end
end
