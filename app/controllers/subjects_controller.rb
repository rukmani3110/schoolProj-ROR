class SubjectsController < ApplicationController
  def new
    @subject = Subject.new
  end
  def create
    code = params.require(:subject).permit(:code)
    email = params.require(:subject).permit(:teacher_email)
     isExistingSubject = Subject.where(:code => code["code"])
     teacherCreated = Teacher.where(:email => email["teacher_email"])
     if isExistingSubject.length > 0
       flash[:alert] = "Subject Already present"
        redirect_to '/options'
    else
    if teacherCreated.length > 0
    classPresent = Section.where(:code => params[:subject][:class_code])
    if classPresent.length > 0
     @subject = Subject.create(params.require(:subject).permit(:name,:code,:class_code,:teacher_email))
     if @subject.save
      redirect_to '/options', notice: "Subject sucessfully created!"
   else
     redirect_to '/options',  notice: "Enter correct values!"
   end
 else
   redirect_to '/options' , notice: "No class is present to assign the subject"
end
 else
   redirect_to '/options',  notice: "Create teacher before assigning to subject"
 end
   end
  end
end
