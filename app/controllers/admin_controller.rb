class AdminController < ApplicationController

  #skip_before_action :authorized, only: [:new, :create]
  def new
     @admin = Admin.new
  end
  def create
    email = params.require(:admin).permit(:email)
     isExistingUser = Admin.where(:email => email["email"])
     if isExistingUser.length > 0
       flash[:alert] = "User already present, try logging in"
        redirect_to '/login'
    else
     @admin = Admin.create(params.require(:admin).permit(:username,
     :password,:email))
     session[:user_id] = @admin.id
     if @admin.save
        flash[:alert] = "logged in"
   else
     redirect_to '/admin/new',  notice: "Enter correct values!"
   end
   end

  end
  end
