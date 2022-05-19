class StudentsController < ApplicationController

    def show
        #render plain: (params[:id]).inspect
        @stud = Student.find(params[:id])
    end

    def  index
        #render plain: params.inspect
        @student = Student.all
    end


    def new
     @students = Student.new
    end

    def create
        #byebug
        #render plain: params[:student]
        @students = Student.new(params.require(:student).permit(:name, :subject, :age))
       if @students.save
        flash[:notice] = "Student was created successfully."
        redirect_to students_path(@students)
       else 
        render 'new'
        #flash[:notice] = "students was created successfully"
       end
    end

    def edit
     #render text: 'hello world!'    
     @students = Student.find(params[:id])
    end

    def update
        @students = Student.find(params[:id])
    if  @students.update(params.require(:student).permit(:name, :subject, :age))
         flash[:notice] = "Student Details Was Successfully Updated."
         redirect_to student_path(@student)
      else
            render 'edit'
      end
    end


    def destroy
        @student = Student.find(params[:id])
        if @student.destroy
            redirect_to students_path
        else
            flash[:notice] = "Something Went Wrong."
        end
        
    end
    def home
        
    end

  def inform

    @favourite = Favourite.new(params.require(:student).permit(:name, :pet_dog, :pet_dog, :age))
    if @favourite.save
        redirect_to student_path
    else
        render plain: "it won't save plz check your validation"
    end
    
  end

   def view
    @favourites = Favourite.find(params[:id])
   end

end

