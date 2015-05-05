class Post < ActiveRecord::Base

  # pagination per page
  self.per_page = 4

  # order desc by created_at
  default_scope { order('created_at DESC') }

  has_and_belongs_to_many :images

  attr_accessible :title, :subtitle, :text,
                  :tags, :comments, :image_ids

end
