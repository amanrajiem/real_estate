class AddAttachmentPictureToComplexBuildings < ActiveRecord::Migration[5.2]
  def self.up
    change_table :complex_buildings do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :complex_buildings, :picture
  end
end
