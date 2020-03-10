class AddVideolinkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :videolink, :string
  end
end
