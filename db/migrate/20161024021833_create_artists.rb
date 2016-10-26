class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :nombre_artista
      t.text :semblanza
      t.string :telefono
      t.string :email
      t.string :banco
      t.string :numero_de_cuenta
      t.string :titulo_de_la_obra
      t.string :medida
      t.string :precio_estimado
      t.string :precio_de_salida
      t.string :porcentaje_de_donacion

      t.timestamps null: false
    end
  end
end
