class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy, :imagen]
  before_action :authenticate_user!

  # GET /artists
  # GET /artists.json
  def index
    @artists = current_user.artists.all
  end

  # GET /artists/1
  # GET /artists/1.json
  def show
    respond_to do |format|
      format.html
      format.pdf {
        render template: "artists/prueba", pdf: "reporte"   # Excluding ".pdf" extension.
      }
    end
  end

  # GET /artists/new
  def new
    @artist = current_user.artists.build
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists
  # POST /artists.json
  def create
    @artist = current_user.artists.build(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: 'Artist was successfully created.' }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1
  # PATCH/PUT /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'Artist was successfully updated.' }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artists/1
  # DELETE /artists/1.json
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: 'Artist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artist
      @artist = Artist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artist_params
      params.require(:artist).permit(:nombre_artista, :semblanza, :telefono, :email, :banco, :numero_de_cuenta, :titulo_de_la_obra, :medida, :precio_estimado, :precio_de_salida, :porcentaje_de_donacion, :imagen)
    end
end
