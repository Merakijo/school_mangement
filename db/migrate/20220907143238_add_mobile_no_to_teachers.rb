class AddMobileNoToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :mobile_no, :integer
  end
end
