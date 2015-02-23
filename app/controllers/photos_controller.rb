class PhotosController < ApplicationController
    def index
        @photos = Photo.all
        render "photos/index.html.erb"
    end
 
    def new
        @photo = Photo.new
    end

    def create
        @photo = Photo.new(photo_params)
        if @photo.save
            flash[:success] = "Photo saved!"
            redirect_to photos_path
        else
            render 'new'
        end
    end

    private

    def photo_params
        params.require(:photo).permit(:image, :title)
    end
end