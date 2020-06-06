class CreateMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :marks do |t|
      t.string :sub_code
      t.string :sub_name
      t.string :stu_code
      t.string :stu_name
      t.integer :marks

      t.timestamps
    end
  end
end
