class RemoveTeacherEmailFromSubject < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :teacher_email, :string
  end
end
