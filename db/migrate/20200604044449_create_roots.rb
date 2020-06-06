class CreateRoots < ActiveRecord::Migration[6.0]
  def change
    create_table :roots do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
