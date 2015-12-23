class RemoveForeignKeyPostPictures < ActiveRecord::Migration
  def change
    remove_foreign_key :pictures, :posts
  end
end
