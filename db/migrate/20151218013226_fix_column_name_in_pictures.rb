class FixColumnNameInPictures < ActiveRecord::Migration
  def change
    rename_column :pictures, :images_file_name, :image_file_name
    rename_column :pictures, :images_content_type, :image_content_type
    rename_column :pictures, :images_file_size, :image_file_size
    rename_column :pictures, :images_updated_at, :image_updated_at
  end
end
