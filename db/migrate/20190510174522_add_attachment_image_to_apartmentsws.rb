class AddAttachmentImageToApartmentsws < ActiveRecord::Migration
  def self.up
    change_table :apartmentsws do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :apartmentsws, :image
  end
end
