class AddStatusToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :status, :integer, default: 1
  end
end
