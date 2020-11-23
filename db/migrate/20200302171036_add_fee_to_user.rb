class AddFeeToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fee, :integer
  end
end
