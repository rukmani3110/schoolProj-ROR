class AddTeacherEmailToSubject < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :teacher_email, :string
  end
end
