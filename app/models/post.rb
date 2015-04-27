class Post < ActiveRecord::Base

  # pagination per page
  self.per_page = 4

  has_and_belongs_to_many :images

  attr_accessible :title, :text, :tags,
                  :comments, :image_ids

end
