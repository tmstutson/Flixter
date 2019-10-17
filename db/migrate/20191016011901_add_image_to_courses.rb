class AddImageToCourses < ActiveRecord::Migration[5.2]
	mount_uploader :image, ImageUploader
  def change
    add_column :courses, :image, :string
  end
end
