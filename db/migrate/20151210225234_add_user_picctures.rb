class AddUserPicctures < ActiveRecord::Migration
  def change
  add_attachment :users, :image
end
end
