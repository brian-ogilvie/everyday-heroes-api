class TodayController < ApplicationController
  def index
    today_tasks = get_today_tasks
    today_challenges = get_today_challenges
    render json: {
      tasks: today_tasks,
      challenges: today_challenges
    }
  end

  private 
  def get_today_tasks
    completed_habits = (Assignment.joins(:daily_task)
      .select("daily_tasks.heroic_habit_id")
      .where(
        assignments: {user_id: current_user[:id], created_at: (Time.now.midnight..Time.now)}, 
        daily_tasks: {level_id: current_user[:level_id]}
      )
    )
    completed_habit_ids = completed_habits.map do | assignment |
      assignment[:heroic_habit_id]
    end
    today_tasks = []
    introduced_habits = HeroicHabit.where("intro_day <= #{current_user.days_active}")
    introduced_habits.each do | habit |
      complete = completed_habit_ids.include?(habit[:id]) ? true : false
      today_tasks.push({
        habit_name: habit[:name],
        habit_id: habit[:id],
        complete: complete
      })
    end
    today_tasks
  end

  def get_today_challenges
    complete_challenges = (CompleteChallenge.joins(:challenge)
      .select("challenges.id")
      .where(
        complete_challenges: {user_id: current_user[:id]},
        challenges: {level_id: current_user[:level_id]}
      )
    )
    complete_challenge_ids = complete_challenges.map do | complete |
      complete[:id]
    end
    today_challenges = []
    introduced_challenges = Challenge.where("intro_day <= #{current_user.days_active} AND level_id = #{current_user[:level_id]}")
    introduced_challenges.each do | challenge |
      complete = complete_challenge_ids.include?(challenge[:id]) ? true : false
      today_challenges.push({
        id: challenge[:id],
        title: challenge[:title],
        category: challenge[:category],
        complete: complete
      })
    end
    today_challenges
  end

end
