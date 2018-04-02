class InstrumentsController < ApplicationController

  get "/instruments" do
    redirect_if_not_logged_in
    @instruments = Instrument.all
    erb :'instruments/index'
  end

  get "/instruments/new" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'instruments/new'
  end

  get "/instruments/:id/edit" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @Instrument = MusicInstrument.find(params[:id])
    erb :'golf_bags/edit'
  end

  post "/instruments/:id" do
    redirect_if_not_logged_in
    @Instrument = MusicInstrument.find(params[:id])
    unless MusicInstrument.valid_params?(params)
      redirect "/instruments/#{@instrument.id}/edit?error=invalid Music Instrument"
    end
    @instrument.update(params.select{|k|k=="name" || k=="capacity"})
    redirect "/instruments/#{@instrument.id}"
  end

  get "/instruments/:id" do
    redirect_if_not_logged_in
    @Instrument = MusicInstrument.find(params[:id])
    erb :'music_instruments/show'
  end

  post "/instruments" do
    redirect_if_not_logged_in

    unless MusicInstrument.valid_params?(params)
      redirect "/instruments/new?error=invalid Music Instrument"
    end
    MusicInstrument.create(params)
    redirect "/instruments"
  end
end
