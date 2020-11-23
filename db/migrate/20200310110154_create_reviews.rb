class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :writer, foreign_key: { to_table: :users }
      t.references :receiver, foreign_key: { to_table: :users }
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
