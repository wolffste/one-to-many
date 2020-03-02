class AddStartdateToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :startdate, :date
  end
end
