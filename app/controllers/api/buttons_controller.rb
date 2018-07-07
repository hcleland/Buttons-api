class Api::ButtonsController < ApplicationController
  def index
    @buttons = Button.all
    render "index.json.jbuilder"
  end

  def create
    button = Button.new(
      shape: params[:shape],
      color: params[:color],
      description: params[:description],
      image_url: params[:image_url]
    )
    button.save
    render "show.json.jbuilder"

  end

  def show
    button = Button.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    button = Button.find_by(id: params[:id])
    button.shape = params[:shape] || button.shape
    button.color = params[:color] || button.color
    button.description = params[:description] || button.description
    button.image_url = params[:image_url] || button.image_url
    button.save
    render "show.json.jbuilder"
  end

  def destroy
    button = Button.find_by(id: params[:id])
    button.destroy
    render json: {message: "Button successfully destroyed."}
  end
end
