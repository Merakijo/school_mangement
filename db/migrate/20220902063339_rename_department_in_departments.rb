class RenameDepartmentInDepartments < ActiveRecord::Migration[6.0]
  def change
  	rename_column :departments, :department, :name
  end
end
