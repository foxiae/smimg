class SmeController < ApplicationController
  def index
    create
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new
    if @image.save
      flash[:notice] = "Look at your resized gif!"
    else
      flash[:notice] = "Sorry, nothing happened"
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def update
    render :action => 'show'
  end

end
