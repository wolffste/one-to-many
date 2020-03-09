class AddSoundcloudlinkToBands < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :soundcloudlink, :string
  end
end
