class Home < ActiveRecord::Base
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
