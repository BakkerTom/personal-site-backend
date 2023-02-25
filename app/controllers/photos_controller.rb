class PhotosController < ApplicationController
  def create
    @photo = Photo.new photo_params

    if @photo.save
      render json: @photo, status: :created, location: @event
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end


  private
  def photo_params
    params.require(:photo).permit(:file)
  end
end
