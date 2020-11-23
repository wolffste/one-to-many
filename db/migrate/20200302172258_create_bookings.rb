class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :band, foreign_key: true
      t.integer :total_fee
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
