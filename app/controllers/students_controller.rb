class StudentsController < ApplicationController

  def index
    name = params[:name]? params[:name].capitalize : nil
    students = Student.all
    found_student = Student.where(last_name: name).or(Student.where(first_name: name)) #bonus
    render json: students
  end


  def show
    id = params[:id]
    student = Student.find(id)
    render json: student
  end


end
