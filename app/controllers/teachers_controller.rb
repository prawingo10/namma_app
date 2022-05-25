class TeachersController < ApplicationController

    def new
        @teachers = Teacher.new
    end

    def create
      @teachers = Teacher.new(params.require(:teacher).permit(:name, :subject))
     if  @teachers.save
        flash[:notice] = "Teachers was successfully saved!"
        redirect_to teachers_path(@teachers)
     else
        render 'new'
     end

    end

     def index
         @teachers = Teacher.all
    end

    def show
        @teachers = Teacher.find(params[:id])
    end

     def edit
        @teacher = Teacher.find(params[:id])

     end

     def update
        @teacher = Teacher.find(params[:id])
        if @teacher.update(params.require(:teacher).permit(:name, :subject))
       flash[:notiice] = "Teacher was updated successfully"
       redirect_to teacher_path(@teacher)
        else
          render 'edit'
        end


     end

    def destroy
        @teacher = Teacher.find(params[:id])
        @teacher.destroy
    end

end
