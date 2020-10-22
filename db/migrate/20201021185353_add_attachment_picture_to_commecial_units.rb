class AddAttachmentPictureToCommecialUnits < ActiveRecord::Migration[5.2]
  def self.up
    change_table :commecial_units do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :commecial_units, :picture
  end
end
