class StudentsController < ApplicationController
  before_action :find_student, only: :show

  def index
    @students = Student.all
  end

  def new
  end

  def show
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end
end
