class AddFeeStatusToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :fee_status, :integer, default: 0
  end
end
