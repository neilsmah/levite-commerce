class AddAttachmentImageToShirts < ActiveRecord::Migration
  def self.up
    change_table :shirts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shirts, :image
  end
end
