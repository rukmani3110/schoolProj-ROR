class SessionsController < ApplicationController

def new
end
def loginTeacher
end

def options
end
def confirmLoginTeacher
   @teacher = Teacher.find_by(email: params[:email])
   if @teacher.nil?
     redirect_to '/welcomeTeacher' ,notice:"Request admin to create an account!"
 else
   if @teacher && @teacher.authenticate(params[:password])
      session[:user_id] = @teacher.id
      session[:email] = @teacher.email
      redirect_to '/teacherOptions'
   else
      redirect_to '/loginTeacher', notice: "Username or password incorrect"
   end
end
end
def teacherLandingPage
end
def create
   @user = User.find_by(email: params[:email])
   if @user.nil?
     redirect_to '/welcome' ,notice:"New User, Sign in first!"
 else
   if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/options'
   else
      redirect_to '/login', notice: "Username or password incorrect"
   end
end
end
def page_requires_login
end
def welcomeTeacher
end
def destroy
    session[:user_id] = nil
    session[:class_id] = "VIAB"
    session[:email] = ""
    redirect_to '/main'
  end
end
