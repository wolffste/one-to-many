class AddStartdateToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :startdate, :date
  end
end
