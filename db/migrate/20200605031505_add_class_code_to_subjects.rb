class AddClassCodeToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :class_code, :string
  end
end
