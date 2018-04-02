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
    @Instrument = Instrument.find(params[:id])
    erb :'instruments/edit'
  end

  post "/instruments/:id" do
    redirect_if_not_logged_in
    @Instrument = Instrument.find(params[:id])
    unless Instrument.valid_params?(params)
      redirect "/instruments/#{@instrument.id}/edit?error=invalid Instrument"
    end
    @instrument.update(params.select{|k|k=="name" || k=="weight"})
    redirect "/instruments/#{@instrument.id}"
  end

  get "/instruments/:id" do
    redirect_if_not_logged_in
    @Instrument =Instrument.find(params[:id])
    erb :'instruments/show'
  end

  post "/instruments" do
    redirect_if_not_logged_in

    unless Instrument.valid_params?(params)
      redirect "/instruments/new?error=invalid Instrument"
    end
   Instrument.create(params)
    redirect "/instruments"
  end
end
