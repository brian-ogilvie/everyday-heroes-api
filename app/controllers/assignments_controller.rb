class AssignmentsController < ApplicationController
  def create
    begin
      assignment = Assignment.new(assignment_params)
      assignment[:user_id] = current_user[:id]
      if assignment.save
        render json: {completed_assignment: assignment}, status: 201
      else 
        render json: {errors: assignment.errors.full_messages}, status: 400
      end
    rescue ActiveRecord::RecordNotFound
      render json: {errors: ["No task found with that id."]}, status: 404
    rescue Exception
      render json: {errors: ["Internal Server Error"]}, status: 500
    end
  end

  private
  def assignment_params
    params.require(:assignment).permit(:daily_task_id)
  end
end
