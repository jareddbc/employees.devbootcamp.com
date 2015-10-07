class EmployeesController < ApplicationController
  def index
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      # render json: @employee, status: :ok
      redirect_to @employee
    else
      render :show
      # render json: @employee.as_json(methods:[:errors]), status: :bad_request
    end
  end

  private

  def employee_params
    params.require(:employee).permit(
      :name,
      :email_local_part,
      :employed,
    )
  end

end
