class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.integer :standard
      t.string :section
      t.string :address
      
    end
  end
end
