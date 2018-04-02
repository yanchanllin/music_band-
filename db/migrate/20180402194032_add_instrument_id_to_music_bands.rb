class AddInstrumentIdToMusicBands < ActiveRecord::Migration[5.1]
  def change
    add_column :music_bands, :instrument_id, :integer
  end
end
