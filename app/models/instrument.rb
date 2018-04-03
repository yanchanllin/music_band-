class Instrument < ActiveRecord::Base
  has_many :music_bands
  belongs_to :user
  has_many :user_instruments
  has_many :users, through: :user_instruments

  def self.valid_params?(params)
    return !params[:name].empty? && !params[:weight].empty?
  end
end
