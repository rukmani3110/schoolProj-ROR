class RemoveEmailFromSubject < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :email, :string
  end
end
