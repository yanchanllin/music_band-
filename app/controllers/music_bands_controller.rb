class MusicBandsController < ApplicationController
  get "/bands" do
    redirect_if_not_logged_in
    @bands = MusicBand.all
    erb :'music_bands/index'
  end

  get "/bands/new" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    erb :'music_bands/new'
  end

  get "/bands/:id/edit" do
    redirect_if_not_logged_in
    @error_message = params[:error]
    @band = MusicBand.find(params[:id])
    erb :'music_bands/edit'
  end

  post "/bands/:id" do
    redirect_if_not_logged_in
    @band = MusicBand.find(params[:id])
    unless MusicBand.valid_params?(params)
      redirect "/bands/#{@band.id}/edit?error=invalid music band"
    end

    @band.update(params.select{|k|k=="name" || k=="founder" || k=="instrument_id"})
    redirect "/bands/#{@band.id}"
  end

  get "/bands/:id" do
    redirect_if_not_logged_in
    @band = MusicBand.find(params[:id])
    erb :'music_bands/show'
  end

  post "/bands" do
    redirect_if_not_logged_in
    unless MusicBand.valid_params?(params)
      redirect "/bands/new?error=invalid music band"
    end
    MusicBand.create(params)
    redirect "/bands"
  end

  delete "/bands/:id" do
    @band = MusicBand.find(params[:id])
     @band.delete if @band
      redirect "/bands"
   end
end
