class UsersController < ApplicationController
    def new
       @users = User.new
    end

    def create
      @users = User.new(params.require(:user).permit(:username, :email))
      if  @users.save
        flash[:notice] = "User was saved successfully"
        redirect_to user_path(@users)
      else
        render 'new'
      end
    end

    def show
       @user = User.find(params[:id])
    end


    def index
        @user = User.all
    end

    def edit
       @user = User.find(params[:id])
    end

    def update
       #render plain: params[:user].inspect
       @user = User.find(params[:id])
       if @user.update(params.require(:user).permit(:username, :email))
        redirect_to users_path(@user)
       else
        render 'edit'
       end

    end

    def delete
       @user = User.find(params[:id])
       @user.destroy
       redirect_to users_path(@user)
    end
end
