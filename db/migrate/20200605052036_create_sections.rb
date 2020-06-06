class CreateSections < ActiveRecord::Migration[6.0]
  def change
    create_table :sections do |t|
      t.string :class_name
      t.string :section
      t.string :code

      t.timestamps
    end
  end
end
