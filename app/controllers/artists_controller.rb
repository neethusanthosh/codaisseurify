class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

   def new
     @artist = Artist.new
   end

   def create
      artist_params = params.require(:artist).permit(:name, :image_url)

      @artist = Artist.new(artist_params)

      if @artist.save
         redirect_to @artist
      else
         render 'new'
      end
    end

    def edit
      @artist = Artist.find(params[:id])
    end

    def update
      @artist = Artist.find(params[:id])

      artist_params = params.require(:artist).permit(:name, :image_url)

        if @artist.update_attributes(artist_params)
          redirect_to @artist
        else
          render 'edit'
        end
    end

    def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end
end