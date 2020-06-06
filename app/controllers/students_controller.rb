class StudentsController < ApplicationController
  def new
    @student = Student.new
  end
  def create
    code = params.require(:student).permit(:code)
     isExistingStudent = Student.where(:code => code["code"])
     classPresent = Section.where(:code => params[:student][:class_code])
     if isExistingStudent.length > 0
       flash[:alert] = "Student Already present"
        redirect_to '/options'
    else
    if classPresent.length > 0
     @student = Student.create(params.require(:student).permit(:name,
     :code,:gender,:class_code))

     if @student.save
      redirect_to '/options', notice: "Student sucessfully created!"
   else
     redirect_to '/options',  notice: "Enter correct values!"
   end
 else
   redirect_to '/options', notice: "No class to enroll !"
 end

   end
  end
end
