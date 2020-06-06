class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :gender

      t.timestamps
    end
  end
end
