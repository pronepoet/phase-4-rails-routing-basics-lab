class StudentsController < ApplicationController
    def index
    student = Student.all
    render json: student
    # byebug
    end

    def grades
        # byebug
    student = Student.all.order(grade: :desc)
    render json: student
    end

    def highest_grade
        # byebug
        highest = Student.all.order(grade: :desc).first
        render json: highest
    end
end
