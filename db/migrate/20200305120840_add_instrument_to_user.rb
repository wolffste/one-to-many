class AddInstrumentToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :instrument, foreign_key: true
  end
end
