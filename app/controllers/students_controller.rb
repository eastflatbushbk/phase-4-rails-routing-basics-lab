class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students 
    end
    def grades
        students = Student.order(grade: :desc)
        render json: students
    end    
    def highest_grade
        student = Student.order(grade: :desc)[0]
        render json: student
    end 
end
