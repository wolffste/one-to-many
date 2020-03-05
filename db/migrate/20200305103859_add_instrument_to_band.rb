class AddInstrumentToBand < ActiveRecord::Migration[5.2]
  def change
    add_reference :bands, :instrument, foreign_key: true
  end
end
