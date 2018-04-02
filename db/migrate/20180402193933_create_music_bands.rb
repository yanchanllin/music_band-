class CreateMusicBands < ActiveRecord::Migration[5.1]
  def change
    create_table :music_bands do |t|
      t.string :name
      t.string :founder
    end
  end
end
