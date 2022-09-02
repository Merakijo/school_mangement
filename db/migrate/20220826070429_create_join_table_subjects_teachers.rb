class CreateJoinTableSubjectsTeachers < ActiveRecord::Migration[6.0]
  def change
  	create_join_table :teachers, :subjects do |t|
  	end
  end
end
