class AddForeignKeyToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :post_id, :integer

    add_foreign_key :pictures, :posts
  end
end
