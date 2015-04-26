class Post < ActiveRecord::Base
  has_and_belongs_to_many :images

  attr_accessible :title, :text, :tags,
                  :comments, :image_ids

end
