class AddClassCodeToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :class_code, :string
  end
end
