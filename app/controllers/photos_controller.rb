class PhotosController < ApplicationController
    
    def new
        @photo = Photo.new
    end
    
    def create
        @photo = Photo.create(params.require(:photo).permit(:image))
        redirect_to "/photos/#{@photo.id}"
    end
    
    def show
        @photo = Photo.find(params[:id])
    end
end
