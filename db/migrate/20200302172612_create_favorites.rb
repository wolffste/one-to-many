class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :musician, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
