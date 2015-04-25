class Project < ActiveRecord::Base
  belongs_to :category, inverse_of: :project

  attr_accessible :title, :text, :url,
                  :key_feature, :image_1,
                  :image_2, :image_3, :category_id
end
