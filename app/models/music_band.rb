class MusicBand < ActiveRecord::Base
  belongs_to :instrument

  def self.valid_params?(params)
    return !params[:name].empty? && !params[:founder].empty?
  end
end
