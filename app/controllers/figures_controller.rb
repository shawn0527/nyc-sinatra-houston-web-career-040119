class FiguresController < ApplicationController
  # add controller methods

  get'/figures' do
    @figure = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  post '/figures' do
    figure = Figure.create(params[:figure])
  end


end
