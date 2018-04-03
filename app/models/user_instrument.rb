class UserInstrument < ActiveRecord::Base
  belongs_to :user
  belongs_to :instrument

  def self.valid_params?(params)
    return !params[:user_id].empty? && !params[:instrument_id].empty?
  end
end
