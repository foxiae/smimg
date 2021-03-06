class SmeController < ApplicationController
  def index
    @image = Image.all
    @image.emojii
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new
    if @image.save
      flash[:notice] = "Look at your resized gif!"
      redirect_to image_path(@image)
    else
      flash[:notice] = "Sorry, nothing happened"
    end
  end

  def show
    @image = Image.all
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes
      flash[:notice] = "Successfully updated painting."
      redirect_to sme_path
    else
      render :action => 'edit'
    end
  end

end
