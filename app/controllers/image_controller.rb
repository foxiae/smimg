class ImageController < ApplicationController
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

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update(image_param)
      flash[:notice] = "Successfully updated painting."
      render :action => 'show'
    end
  end

  private
  def image_param
    params.require(:image).permit(:emojii, :remote_emojii_url)
  end
end
