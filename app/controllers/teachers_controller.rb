class TeachersController < ApplicationController

def new
end



def create
    @teachers = Teacher.new(params.require(:teacher).permit(:name, :subject))
    if @teachers.save
        flash[:notice] = "teacher was successfull created"
        redirect_to teacher_path(@teachers)
    else
        render 'new'
    end
end

def index
    @teachers = Teacher.all
end

def show
    @teacher = Teacher.find(params[:id])
end


end

