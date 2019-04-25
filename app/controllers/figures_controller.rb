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
    unless params[:title][:name].empty?
      title = Title.new(params[:title])
      figure.update(title)
    end
    unless params[:landmark][:name].empty?
      landmark = Landmark.create(params)
  end


end
