class MarksController < ApplicationController
  def new
    @mark = Mark.new
  end
  def create
markEntered = Mark.where(sub_code: params[:mark][:sub_code],stu_code: params[:mark][:stu_code])

if markEntered.empty?
  @mark = Mark.create(params.require(:mark).permit(:sub_code,:sub_name,:stu_code,:stu_name,:marks))
  redirect_to '/teacherOptions'
else
  @mark = markEntered[0].update(:marks => params["mark"][:marks])
  redirect_to '/teacherOptions'
end
  end
end
