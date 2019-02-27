class TasksController < ApplicationController
  def today
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
        habit_name: habit,
        habit_id: habit_id,
        complete: complete
      })
    end
    render json: {today_tasks: today_tasks}
  end

  def tasks_for_habit
    habit = HeroicHabit.find(params[:habit_id])
    habit_tasks = DailyTask
      .select("daily_tasks.id, daily_tasks.element, daily_tasks.title, daily_tasks.description")
      .where(daily_tasks: {level_id: current_user[:level_id], heroic_habit_id: params[:habit_id]})
    render json: {
      habit: {id: habit[:id], name: habit[:name]},
      tasks: habit_tasks
    }
  end
end
