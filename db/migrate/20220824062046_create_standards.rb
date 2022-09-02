class CreateStandards < ActiveRecord::Migration[6.0]
  def change
    create_table :standards do |t|
    	t.string :standard
    end
  end
end
