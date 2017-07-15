class AddAttachmentPictureToBills < ActiveRecord::Migration[5.1]
  def self.up
    change_table :bills do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :bills, :picture
  end
end
