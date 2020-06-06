class AddTotalToStudent < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :total, :integer
  end
end
