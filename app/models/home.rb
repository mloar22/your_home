class Home < ActiveRecord::Base
mount_uploader :cover_image_url, CoverImageUploader

belongs_to :user
  def self.search(search)
      if search
        where(["category LIKE ?","%#{search}%"])
      else
        all
      end
  end
  default_scope { order('created_at DESC') }
end
