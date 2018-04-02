class Instrument < ActiveRecord::Base
  has_many :music_bands
  belongs_to :user

  def self.valid_params?(params)
    return !params[:name].empty? && !params[:capacity].empty?
  end
end
