class AddGroupToBloodGroups < ActiveRecord::Migration[6.0]
 
  def change
  	add_column :blood_groups, :group, :string
  end
end
