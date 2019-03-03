class TodayController < ApplicationController
  def index
    completed = (Assignment.joins(:daily_task)
      .select("daily_tasks.heroic_habit_id")
      .where(
        assignments: {user_id: current_user[:id], created_at: (Time.now.midnight..Time.now)}, 
        daily_tasks: {level_id: current_user[:level_id]}
      )
    )
    completed_habits = completed.map do | assignment |
      assignment[:heroic_habit_id]
    end
    today_tasks = []
    introduced_habits = HeroicHabit.where("intro_day <= #{current_user.days_active}")
    introduced_habits.each do | habit |
      complete = completed_habits.include?(habit[:id]) ? true : false
      today_tasks.push({
        habit_name: habit[:name],
        habit_id: habit[:id],
        complete: complete
      })
    end
    render json: {today_tasks: today_tasks}
  end
end
