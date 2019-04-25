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
    figure = Figure.new(params[:figure])
    unless params[:title][:name].empty?
      figure.titles << Title.create(params(:title))
    end

    unless params[:landmark][:name].empty?
      figure.landmarks << Landmark.new(params[:landmark])
    end
    figure.save
  end
    # figure = Figure.new(params[:figure])
    # unless params[:title][:name].empty?
    #   title = Title.create(params[:title])
    #   figure.titles << title
    #
    # end
    #
    # unless params[:landmark][:name].empty?
    #   landmark = Landmark.create(params[:landmark])
    #   figure.landmarks << landmark
    # end
    # figure.save


end
