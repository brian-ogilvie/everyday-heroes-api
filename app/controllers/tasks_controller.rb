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

  def show
    begin
      daily_task = DailyTask.find(params[:id])
      habit = HeroicHabit.find(daily_task[:heroic_habit_id])
      task = {
        id: daily_task[:id],
        title: daily_task[:title],
        description: daily_task[:description],
        element: daily_task[:element],
        habit_name: habit[:name]
      }
      render json: {task: task}
    rescue ActiveRecord::RecordNotFound
      not_found
    rescue Exception
      server_error
    end
  end

  def tasks_for_habit
    habit = HeroicHabit.find(params[:habit_id])
    if habit[:intro_day] > current_user.days_active
      return render json: {error: "#{habit[:name].capitalize} has not been introduced yet."}, status: 400
    end
    habit_tasks = DailyTask
      .select("daily_tasks.id, daily_tasks.element, daily_tasks.title, daily_tasks.description")
      .where(daily_tasks: {level_id: current_user[:level_id], heroic_habit_id: params[:habit_id]})
    render json: {
      habit: {id: habit[:id], name: habit[:name]},
      tasks: habit_tasks
    }
  end

  private
  def not_found
    render json: {errors: ["No task found with that id"]}, status: 404
  end

  def server_error
    render json: {errors: ["Internal Server Error"]}, status: 500
  end
end
