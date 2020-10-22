class AddAttachmentPictureToHouses < ActiveRecord::Migration[5.2]
  def self.up
    change_table :houses do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :houses, :picture
  end
end
