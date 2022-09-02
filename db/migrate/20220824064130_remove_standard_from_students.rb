class RemoveStandardFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :standard, :integer
  end
end
