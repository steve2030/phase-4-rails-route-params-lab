class StudentsController < ApplicationController
  def index
    students = Student.all

    if params[:name]
      students_by_name = students.select do |student|
        student.last_name == params[:name].capitalize|| student.first_name == params[:name].capitalize
      end
      render json: students_by_name
    else
      render json: students
    end
    # render.json:students

  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
