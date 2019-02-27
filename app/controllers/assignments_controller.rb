class AssignmentsController < ApplicationController
  def create
    assignment = Assignment.new(assignment_params)
    assignment[:user_id] = current_user[:id]
    assignment.save
    render json: {completed_assignment: assignment}, status: 201
  end

  private
  def assignment_params
    params.require(:assignment).permit(:daily_task_id)
  end
end
