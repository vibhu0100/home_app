class SessionController < ApplicationController
    def new
    end
    def create
        user=User.find_by(email: params[:session][:email])
        puts user.password
        puts params[:session][:password]
        if user.password.eql?(params[:session][:password])
            flash[:success]="Logged in"
            puts user.id
            puts "hello"
            session[:user_id]=user.id
            redirect_to home_url, notice: "Logged in"
            

        else
            puts "error"
            render 'new'
        end
    end
end
