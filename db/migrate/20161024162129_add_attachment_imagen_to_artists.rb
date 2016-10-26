class AddAttachmentImagenToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :artists, :imagen
  end
end
