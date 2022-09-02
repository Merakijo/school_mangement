class AddHodIdToDepartments < ActiveRecord::Migration[6.0]
  def change
  	add_column :departments, :hod_id, :integer
  end
end
