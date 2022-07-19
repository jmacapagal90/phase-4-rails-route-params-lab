class StudentsController < ApplicationController

  def index
    student_name = Student.find_by(name: params[:name])
    students = if params[:name]
                 Student.find_by(name: student_name)
               else
                 Student.all
               end    
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
