class RemoveSectionFromStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :section, :string
  end
end
