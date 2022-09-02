class AddStatusToStudents < ActiveRecord::Migration[6.0]
  def change
  	add_column :students, :status, :boolean, :default => "pass"
  end
end
