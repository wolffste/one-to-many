class AddVideolinkToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :videolink, :string
  end
end
