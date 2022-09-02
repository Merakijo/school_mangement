class AddMobileNoToStudents < ActiveRecord::Migration[6.0]
  def change
  	add_column :students, :mobile_no, :bigint
  	add_index :students, :mobile_no, unique: true
  end
end
