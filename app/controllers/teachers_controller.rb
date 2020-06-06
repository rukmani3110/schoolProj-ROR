class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    email = params.require(:teacher).permit(:email)
     isExistingTeacher = Teacher.where(:email => email["email"])
     if isExistingTeacher.length > 0
       flash[:alert] = "Teacher Already present"
        redirect_to '/options'
    else
     @teacher = Teacher.create(params.require(:teacher).permit(:name,:email,:password,:gender))
     if @teacher.save
      redirect_to '/options', notice: "Teacher sucessfully created!"
   else
     redirect_to '/options',  notice: "Enter correct values!"
   end
   end
  end
end
