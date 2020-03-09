class AddEnddateToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :enddate, :date
  end
end
