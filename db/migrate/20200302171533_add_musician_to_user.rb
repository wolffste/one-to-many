class AddMusicianToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :musician, :boolean, default: false
  end
end
