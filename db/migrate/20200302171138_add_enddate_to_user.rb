class AddEnddateToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :enddate, :date
  end
end
