class AddBloodGroupToStudents < ActiveRecord::Migration[6.0]
  def change
  	add_column :students, :blood_group_id, :integer
  end
end
