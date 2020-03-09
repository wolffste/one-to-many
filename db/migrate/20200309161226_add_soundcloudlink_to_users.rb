class AddSoundcloudlinkToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :soundcloudlink, :string
  end
end
