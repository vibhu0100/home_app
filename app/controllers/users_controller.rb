class UsersController < ApplicationController

    def new
        @user=User.new
    end
    def create
        @user=User.new(user_params)
        if @user.save
          #log_in @user
          #flash[:success] = "Welcome to the Sample App!"
          #redirect_to @user
          #@user.send_activation_email
          flash[:success]="Please check your email to activate account."
          redirect_to home_url
        
        else
            flash.now[:error]="Error"
          render 'new'
        end

    end
private

    def user_params
        params.require(:user).permit(:name,:email,:contact,:password)
    end

end
