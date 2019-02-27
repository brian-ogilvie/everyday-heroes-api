class TasksController < ApplicationController
  def today
    # completed = Assignment.where({user_id: current_user[:id], created_at: (Time.now.midnight..Time.now)})
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
    (1..5).each do | habit_id |
      habit = HeroicHabit.find(habit_id)[:name]
      complete = completed_habits.include?(habit_id) ? true : false
      today_tasks.push({
        habit: habit,
        complete: complete
      })
    end
    render json: {today_tasks: today_tasks}
  end

  def tasks_for_habit
    DailyTask.joins(:heroic_habit).where(daily_tasks: {level_id: current_user[:level_id]}, heroic_habits: {id: params[:id]})
  end
end
