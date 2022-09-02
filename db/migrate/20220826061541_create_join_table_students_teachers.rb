class CreateJoinTableStudentsTeachers < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :students, :teachers do |t|
  	end
  end
end
