class UsersController < ApplicationController
#skip_before_action :authorized, only: [:new, :create]
def new
   @user = User.new
end
def viewMarks
end
def search_class
    rank = 0
    prev_total = 0
    skip = 1
    total = 0
  if params[:searchCategory].nil?
    session[:class_id] = "VIAB"
  else
    session[:class_id] = params[:searchCategory]
  end
@subjectDetails = []
@studentDetails = []
for subject in Subject.where(:class_code => session[:class_id])
  @subjectDetails.push(subject.name)
end
for student in Student.where(:class_code => session[:class_id])
total = 0
subjects = {}
       for subject in Subject.where(:class_code => session[:class_id])
           if Mark.where(sub_code: subject.code ,stu_code: student.code).empty?
              student.update(:total => 0)
              subjects[subject.name] = 0
          else
              total = total + Mark.where(sub_code: subject.code ,stu_code: student.code)[0]["marks"]
             student.update(:total => total)
             subjects[subject.name] = Mark.where(sub_code: subject.code ,stu_code: student.code)[0]["marks"]
         end
end
individualStudents = {}
individualStudents["name"] = student.name
individualStudents["class_code"] = student.class_code
individualStudents["total"] = student.total
individualStudents["subjects"] = subjects
@studentDetails.push(individualStudents)
end
@studentDetails = @studentDetails.sort_by { |k| k["total"] }.reverse
@studentDetails.each do |stu|
  if stu["total"] != 0
  if prev_total == stu["total"]
     skip = skip+1
   else
     if skip >= 1
     rank = rank + skip
    else
      rank = rank + 1

      end
      skip = 1
     end
     prev_total = stu["total"]
  stu["rank"] = rank
else
  stu["rank"] = 0
end
end
end
def create
  email = params.require(:user).permit(:email)
   isExistingUser = User.where(:email => email["email"])
   if isExistingUser.length > 0
     flash[:alert] = "User already present, try logging in"
      redirect_to '/login'
  else
   @user = User.create(params.require(:user).permit(:username,
   :password,:email))
   session[:user_id] = @user.id
   if @user.save
   redirect_to '/options'
 else
   redirect_to '/users/new',  notice: "Enter correct values!"
 end
 end

end
end
