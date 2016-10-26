require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { banco: @artist.banco, email: @artist.email, medida: @artist.medida, nombre_artista: @artist.nombre_artista, numero_de_cuenta: @artist.numero_de_cuenta, porcentaje_de_donacion: @artist.porcentaje_de_donacion, precio_de_salida: @artist.precio_de_salida, precio_estimado: @artist.precio_estimado, semblanza: @artist.semblanza, telefono: @artist.telefono, titulo_de_la_obra: @artist.titulo_de_la_obra }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { banco: @artist.banco, email: @artist.email, medida: @artist.medida, nombre_artista: @artist.nombre_artista, numero_de_cuenta: @artist.numero_de_cuenta, porcentaje_de_donacion: @artist.porcentaje_de_donacion, precio_de_salida: @artist.precio_de_salida, precio_estimado: @artist.precio_estimado, semblanza: @artist.semblanza, telefono: @artist.telefono, titulo_de_la_obra: @artist.titulo_de_la_obra }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end
