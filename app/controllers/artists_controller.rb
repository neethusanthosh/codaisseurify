class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

   def new_song
     @artist = Artist.find(params[:id])

   end
 def create_song
puts "title --> #{:title}"
puts " genere --> #{:genere}"
puts " artist_id --> #{:artist_id}"
  #  song_params = params.require(:song).permit(:title, :genere, :artist_id)

  # @song = Song.new(song_params)
  #
  # if @song.save
  #    redirect_to @song
  # else
  #    render 'show'
  # end

 end
   def new
     @artist = Artist.new
   end

   def create
      @artist = Artist.new(artist_params)

      if @artist.save
         redirect_to @artist
      else
         render 'new'
      end
    end

    # def edit
    #   @artist = Artist.find(params[:id])
    # end
    #
    def update
      @artist = Artist.find(params[:id])
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

  private

   def artist_params
     params.require(:artist).permit(:name, :image_url, :song_id)
   end


end
