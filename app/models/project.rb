class Project < ActiveRecord::Base
  belongs_to :category, inverse_of: :project
  has_and_belongs_to_many :images

  attr_accessible :title, :text, :url,
                  :key_feature, :category_id, :image_ids


end
