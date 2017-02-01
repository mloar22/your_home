class AddCoverImageUrlToHomes < ActiveRecord::Migration
  def change
    add_column :homes, :cover_image_url, :string
  end
end
