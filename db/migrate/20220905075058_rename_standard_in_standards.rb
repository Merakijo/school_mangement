class RenameStandardInStandards < ActiveRecord::Migration[6.0]
  def change
  	rename_column :standards, :standard, :name
  end
end
